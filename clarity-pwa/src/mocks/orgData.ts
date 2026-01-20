
import type { Usuario } from '../types/modelos';

export const ORG_MOCK_DATA: Usuario[] = [
    // 1. GERENCIA GENERAL RRHH
    { idUsuario: 1, nombre: "Carlos Gerente", correo: "carlos.gerente@empresa.com", activo: true, rolGlobal: "Admin" },

    // 2. SUBGERENCIA TALENTO (Reclutamiento)
    { idUsuario: 10, nombre: "Laura Torrez", correo: "laura.torrez@empresa.com", activo: true, rolGlobal: "Empleado" }, // Subgerente
    { idUsuario: 11, nombre: "Pedro Coordinador A", correo: "pedro.coord@empresa.com", activo: true, rolGlobal: "Empleado" },
    { idUsuario: 12, nombre: "Ana Reclutador", correo: "ana.rec@empresa.com", activo: true, rolGlobal: "Empleado" },
    { idUsuario: 13, nombre: "Luis Sourcer", correo: "luis.sourcer@empresa.com", activo: true, rolGlobal: "Empleado" },
    { idUsuario: 14, nombre: "Maria Entrevistas", correo: "maria.ent@empresa.com", activo: true, rolGlobal: "Empleado" },
    { idUsuario: 15, nombre: "Sofia Onboarding", correo: "sofia.onb@empresa.com", activo: true, rolGlobal: "Empleado" },
    { idUsuario: 16, nombre: "Diego Marca E", correo: "diego.marca@empresa.com", activo: true, rolGlobal: "Empleado" },
    { idUsuario: 17, nombre: "Lucia Pasante", correo: "lucia.pasante@empresa.com", activo: true, rolGlobal: "Empleado" },

    // 3. SUBGERENCIA ADMINISTRACION (Nominas, Beneficios)
    { idUsuario: 20, nombre: "Roberto Numeros", correo: "roberto.admin@empresa.com", activo: true, rolGlobal: "Empleado" }, // Subgerente
    { idUsuario: 21, nombre: "Carmen Nomina", correo: "carmen.nomina@empresa.com", activo: true, rolGlobal: "Empleado" }, // Coord
    { idUsuario: 22, nombre: "Jorge Beneficios", correo: "jorge.ben@empresa.com", activo: true, rolGlobal: "Empleado" },
    { idUsuario: 23, nombre: "Elena Contratos", correo: "elena.con@empresa.com", activo: true, rolGlobal: "Empleado" },
    { idUsuario: 24, nombre: "Ricardo Asistencias", correo: "ricardo.asist@empresa.com", activo: true, rolGlobal: "Empleado" },
    { idUsuario: 25, nombre: "Patricia Legales", correo: "patricia.leg@empresa.com", activo: true, rolGlobal: "Empleado" },
    { idUsuario: 26, nombre: "Miguel Archivo", correo: "miguel.arch@empresa.com", activo: true, rolGlobal: "Empleado" },
    { idUsuario: 27, nombre: "Andrea Pagos", correo: "andrea.pagos@empresa.com", activo: true, rolGlobal: "Empleado" },
    { idUsuario: 28, nombre: "Fernando Seguro", correo: "fernando.seg@empresa.com", activo: true, rolGlobal: "Empleado" },

    // 4. SUBGERENCIA DESARROLLO (Capacitación, Clima)
    { idUsuario: 30, nombre: "Diana Desarrollo", correo: "diana.des@empresa.com", activo: true, rolGlobal: "Empleado" }, // Subgerente
    { idUsuario: 31, nombre: "Esteban Capacitacion", correo: "esteban.cap@empresa.com", activo: true, rolGlobal: "Empleado" }, // Coord
    { idUsuario: 32, nombre: "Valeria Clima", correo: "valeria.clima@empresa.com", activo: true, rolGlobal: "Empleado" },
    { idUsuario: 33, nombre: "Hugo Evaluaciones", correo: "hugo.eval@empresa.com", activo: true, rolGlobal: "Empleado" },
    { idUsuario: 34, nombre: "Isabel Cultura", correo: "isabel.cult@empresa.com", activo: true, rolGlobal: "Empleado" },
    { idUsuario: 35, nombre: "Gabriel Eventos", correo: "gabriel.ev@empresa.com", activo: true, rolGlobal: "Empleado" },
    { idUsuario: 36, nombre: "Monica Comunicacion", correo: "monica.com@empresa.com", activo: true, rolGlobal: "Empleado" },
    { idUsuario: 37, nombre: "Raul Diseño", correo: "raul.dis@empresa.com", activo: true, rolGlobal: "Empleado" },
    { idUsuario: 38, nombre: "Clara Aprendizaje", correo: "clara.lern@empresa.com", activo: true, rolGlobal: "Empleado" },

    // 5. SUBGERENCIA RELACIONES LABORALES (Sindicatos, Seguridad)
    { idUsuario: 40, nombre: "Sergio Relaciones", correo: "sergio.rel@empresa.com", activo: true, rolGlobal: "Empleado" }, // Subgerente
    { idUsuario: 41, nombre: "Teresa Sindical", correo: "teresa.sind@empresa.com", activo: true, rolGlobal: "Empleado" }, // Coord
    { idUsuario: 42, nombre: "Oscar Seguridad", correo: "oscar.shs@empresa.com", activo: true, rolGlobal: "Empleado" },
    { idUsuario: 43, nombre: "Natalia Salud", correo: "natalia.salud@empresa.com", activo: true, rolGlobal: "Empleado" },
    { idUsuario: 44, nombre: "Victor Conflictos", correo: "victor.conf@empresa.com", activo: true, rolGlobal: "Empleado" },
    { idUsuario: 45, nombre: "Gloria Bienestar", correo: "gloria.bien@empresa.com", activo: true, rolGlobal: "Empleado" },
    { idUsuario: 46, nombre: "Ramon Servicios", correo: "ramon.serv@empresa.com", activo: true, rolGlobal: "Empleado" },
    { idUsuario: 47, nombre: "Silvia Transporte", correo: "silvia.trans@empresa.com", activo: true, rolGlobal: "Empleado" },
    { idUsuario: 48, nombre: "Javier Comedor", correo: "javier.com@empresa.com", activo: true, rolGlobal: "Empleado" },
];

export const ORG_STRUCTURE = {
    gerencia: {
        lider: 1,
        subgerencias: [
            { nombre: "Talento Humano", lider: 10, equipo: [11, 12, 13, 14, 15, 16, 17] },
            { nombre: "Administración y Nómina", lider: 20, equipo: [21, 22, 23, 24, 25, 26, 27, 28] },
            { nombre: "Desarrollo Organizacional", lider: 30, equipo: [31, 32, 33, 34, 35, 36, 37, 38] },
            { nombre: "Relaciones Laborales", lider: 40, equipo: [41, 42, 43, 44, 45, 46, 47, 48] },
        ]
    }
};
