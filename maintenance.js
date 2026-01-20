const http = require('http');
const fs = require('fs');

function request(path, callback) {
    http.get('http://localhost:3000/api/' + path, (resp) => {
        let data = '';
        resp.on('data', (chunk) => { data += chunk; });
        resp.on('end', () => {
            try {
                const json = JSON.parse(data);
                callback(null, json);
            } catch (e) {
                callback(e, data);
            }
        });
    }).on("error", (err) => callback(err));
}

console.log("1. Reseteando contraseñas...");
request('reset-passwords', (err, res) => {
    if (err) return console.error("Error reset:", err);
    console.log("Reset Result:", res);

    console.log("2. Buscando usuarios RRHH...");
    request('rrhh-users', (err, users) => {
        if (err) return console.error("Error RRHH:", err);

        // Handle array or wrapped response
        const list = Array.isArray(users) ? users : (users.data || []);

        console.log(`Encontrados ${list.length} usuarios.`);

        let content = "CUENTAS DE PRUEBA (RRHH)\nPassword Global: 123456\n\n";
        list.forEach(u => {
            content += `ID: ${u.idUsuario} | ${u.nombre} (${u.correo}) - Area: ${u.area} [${u.rol}]\n`;
        });

        fs.writeFileSync('d:/planificacion/CUENTAS_PRUEBA.txt', content);
        console.log("Archivo guardado en d:/planificacion/CUENTAS_PRUEBA.txt");
    });
});
