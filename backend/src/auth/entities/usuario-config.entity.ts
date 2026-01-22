
import { Usuario } from './usuario.entity';

export class UsuarioConfig {
    idConfig: number;
    idUsuario: number;
    usuario: Usuario;
    vistaPreferida: string;
    rutinas: string;
    customMenu: string | null;
    fechaActualizacion: Date;
}
