const http = require('http');

http.get('http://localhost:3000/api/debug-users', (resp) => {
    let data = '';
    resp.on('data', (chunk) => { data += chunk; });
    resp.on('end', () => {
        try {
            const json = JSON.parse(data);
            // Si hay interceptor global:
            const users = Array.isArray(json) ? json : (json.data || []);

            console.log("--- USERS FOUND ---");
            users.forEach(u => {
                console.log(`ID: ${u.idUsuario} | Email: ${u.correo} | Nombre: ${u.nombre} | Rol: ${u.rolGlobal}`);
            });
            console.log("-------------------");
        } catch (e) {
            console.log("Error parsing JSON:", e.message);
            console.log("Raw body:", data.substring(0, 200));
        }
    });
}).on("error", (err) => {
    console.log("Error request: " + err.message);
});
