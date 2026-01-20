import { Test, TestingModule } from '@nestjs/testing';
import { TasksService } from './tasks.service';
import { getRepositoryToken } from '@nestjs/typeorm';
import { Tarea } from '../planning/entities/tarea.entity';
import { SolicitudCambio } from '../planning/entities/solicitud-cambio.entity';
import { ResourceNotFoundException, BusinessRuleException } from '../common/exceptions';
import { DataSource } from 'typeorm';

describe('TasksService - Approval Flow', () => {
    let service: TasksService;
    let solicitudRepo;
    let tareaRepo;

    const mockSolicitudRepo = {
        find: jest.fn(),
        findOne: jest.fn(),
        save: jest.fn(),
        create: jest.fn(),
    };

    const mockTareaRepo = {
        findOne: jest.fn(),
        save: jest.fn(),
    };

    const mockDataSource = {
        query: jest.fn(),
    };

    beforeEach(async () => {
        const module: TestingModule = await Test.createTestingModule({
            providers: [
                TasksService,
                { provide: getRepositoryToken(Tarea), useValue: mockTareaRepo },
                { provide: getRepositoryToken(SolicitudCambio), useValue: mockSolicitudRepo },
                { provide: DataSource, useValue: mockDataSource },
                // Mock other dependencies as null/mock since regular unit tests might not need them for this specific method
                { provide: getRepositoryToken('Usuario'), useValue: {} },
                { provide: getRepositoryToken('TareaAsignado'), useValue: {} },
                { provide: getRepositoryToken('TareaAvance'), useValue: {} },
                { provide: getRepositoryToken('Checkin'), useValue: {} },
                { provide: getRepositoryToken('CheckinTarea'), useValue: {} },
                { provide: getRepositoryToken('Bloqueo'), useValue: {} },
                { provide: getRepositoryToken('OrganizacionNodo'), useValue: {} },
                { provide: getRepositoryToken('Proyecto'), useValue: {} },
                { provide: getRepositoryToken('UsuarioOrganizacion'), useValue: {} },
                { provide: 'AuditService', useValue: { log: jest.fn() } },
                { provide: 'PlanningService', useValue: {} },
                { provide: 'VisibilidadService', useValue: {} },
            ],
        }).compile();

        service = module.get<TasksService>(TasksService);
        solicitudRepo = module.get(getRepositoryToken(SolicitudCambio));
        tareaRepo = module.get(getRepositoryToken(Tarea));
    });

    it('should approve a date change request', async () => {
        const mockTarea = { idTarea: 1, fechaObjetivo: '2026-01-01', _auditUsuario: 0 } as Tarea;
        const mockSolicitud = {
            idSolicitud: 100,
            estado: 'Pendiente',
            campoAfectado: 'fechaObjetivo',
            valorNuevo: '2026-02-01',
            tarea: mockTarea
        } as SolicitudCambio;

        mockSolicitudRepo.findOne.mockResolvedValue(mockSolicitud);
        mockSolicitudRepo.save.mockImplementation(s => Promise.resolve(s));
        mockTareaRepo.save.mockImplementation(t => Promise.resolve(t));

        const result = await service.resolverSolicitud(100, 'Aprobar', 99, 'Ok');

        expect(result.estado).toBe('Aprobado');
        expect(mockTarea.fechaObjetivo).toBe('2026-02-01'); // Updated
        expect(mockTarea._auditUsuario).toBe(99); // Audit set
        expect(mockSolicitudRepo.save).toHaveBeenCalled();
        expect(mockTareaRepo.save).toHaveBeenCalled();
    });

    it('should reject a request', async () => {
        const mockSolicitud = {
            idSolicitud: 101,
            estado: 'Pendiente',
            tarea: {}
        } as SolicitudCambio;

        mockSolicitudRepo.findOne.mockResolvedValue(mockSolicitud);
        mockSolicitudRepo.save.mockImplementation(s => Promise.resolve(s));

        const result = await service.resolverSolicitud(101, 'Rechazar', 99, 'No way');

        expect(result.estado).toBe('Rechazado');
        expect(result.motivoRechazo).toBe('No way');
        expect(mockTareaRepo.save).not.toHaveBeenCalled();
    });

    it('should throw if request not found', async () => {
        mockSolicitudRepo.findOne.mockResolvedValue(null);
        await expect(service.resolverSolicitud(999, 'Aprobar', 1)).rejects.toThrow(ResourceNotFoundException);
    });

    it('should throw if request already processed', async () => {
        const mockSolicitud = { idSolicitud: 102, estado: 'Aprobado' } as SolicitudCambio;
        mockSolicitudRepo.findOne.mockResolvedValue(mockSolicitud);
        await expect(service.resolverSolicitud(102, 'Rechazar', 1)).rejects.toThrow(BusinessRuleException);
    });
});
