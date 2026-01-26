async function test() {
    const base = 'http://localhost:3000/api';
    console.log('Testing...');
    const results = [];
    try {
        const res = await fetch(base + '/auth/login', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ correo: 'gerente@rrhh.demo', password: '123456' })
        });
        const loginData = await res.json();
        results.push(`Login: ${res.status} ${loginData.success ? 'OK' : 'FAIL'}`);

        if (loginData.data && loginData.data.access_token) {
            const token = loginData.data.access_token;
            const endpoints = [
                '/config',
                '/proyectos',
                '/reportes/productividad',
                '/reportes/bloqueos-trend',
                '/reportes/equipo-performance'
            ];

            for (const ep of endpoints) {
                const r = await fetch(base + ep, {
                    headers: { 'Authorization': `Bearer ${token}` }
                });
                const d = await r.json();
                results.push(`${ep}: ${r.status} ${Array.isArray(d.data) ? `Array(${d.data.length})` : 'Object'}`);
                if (ep === '/reportes/bloqueos-trend') results.push(`  RAW DATA BLOQUEOS: ${JSON.stringify(d.data)}`);
                if (ep === '/reportes/productividad') results.push(`  RAW DATA PROD: ${JSON.stringify(d.data)}`);
                if (r.status !== 200) results.push(`  Error: ${JSON.stringify(d)}`);
            }
        }
    } catch (e) {
        results.push(`Error: ${e.message}`);
    }
    console.log(results.join('\n'));
}
test();
