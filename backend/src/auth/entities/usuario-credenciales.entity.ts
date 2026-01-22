
export class UsuarioCredenciales {
    idCredencial: number;
    idUsuario: number;
    passwordHash: string;
    ultimoLogin: Date;
    refreshTokenHash: string;
}
