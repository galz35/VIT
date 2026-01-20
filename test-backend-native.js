async function test() {
    const base = 'http://localhost:3000/api';
    console.log('Testing Login...');
    try {
        const res = await fetch(base + '/auth/login', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ correo: 'gerente@rrhh.demo', password: '123456' })
        });
        const data = await res.json();
        console.log('Login Result:', res.status, data.success ? 'Success' : 'Failed');
        console.log('DEBUG Data Keys:', Object.keys(data));
        if (data.data) console.log('DEBUG Inner Data Keys:', Object.keys(data.data));

        if (data.data && data.data.accessToken) {
            console.log('Token detected. Starting loop...');
            const token = data.data.accessToken;
            const endpoints = [
                '/config',
                '/proyectos',
                '/reportes/productividad',
                '/reportes/bloqueos-trend',
                '/reportes/equipo-performance'
            ];

            for (const ep of endpoints) {
                console.log(`Testing ${ep}...`);
                const r = await fetch(base + ep, {
                    headers: { 'Authorization': `Bearer ${token}` }
                });
                const d = await r.json();
                console.log(`- ${ep}:`, r.status, Array.isArray(d) ? `Array(${d.length})` : 'Object');
                if (r.status !== 200) console.log('  Error:', d);
            }
        }
    } catch (e) {
        console.error('Fetch error:', e.message);
    }
}
test();
