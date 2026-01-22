import { Rol } from './rol.entity';
import { UsuarioOrganizacion } from './usuario-organizacion.entity';

/** ENTIDAD UNIFICADA: USUARIO + EMPLEADO */
export class Usuario {
    idUsuario: number;
    nombre: string;
    carnet: string | null;
    correo: string;
    telefono: string | null;
    activo: boolean;
    rolGlobal: string;
    idRol: number | null;
    rol: Rol;
    pais: string;

    // === CAMPOS RRHH (NUEVOS) ===
    nombreCompleto: string | null;
    cargo: string | null;
    departamento: string | null;
    orgDepartamento: string | null;
    orgGerencia: string | null;
    idOrg: string | null;
    jefeCarnet: string | null;
    jefeNombre: string | null;
    jefeCorreo: string | null;
    fechaIngreso: Date | null;
    genero: string | null;
    username: string | null;

    // === CAMPOS EXTENDIDOS RRHH (CSV) ===
    cedula: string | null;
    area: string | null;
    gerencia: string | null;
    subgerencia: string | null;
    ogerencia: string | null;
    direccion: string | null;
    empresa: string | null;
    ubicacion: string | null;

    // NIVELES ORGANIZACIONALES (TEXTO)
    primerNivel: string | null;
    segundoNivel: string | null;
    tercerNivel: string | null;
    cuartoNivel: string | null;
    quintoNivel: string | null;
    sextoNivel: string | null;

    // JEFATURA EXTENDIDA
    carnetJefe2: string | null;
    carnetJefe3: string | null;
    carnetJefe4: string | null;

    // CONTRATO
    tipoEmpleado: string | null;
    tipoContrato: string | null;
    fuenteDatos: string | null; // EXCEL, MANUAL

    fechaCreacion: Date;
    organizaciones: UsuarioOrganizacion[];
}
