// Usamos fetch nativo (Node 18+) para evitar dependencias externas en la raíz
const API_URL = 'http://localhost:3000/api';

async function testBackend() {
    try {
        console.log('--- TEST 1: LOGIN ---');
        const loginRes = await fetch(`${API_URL}/auth/login`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
                correo: 'gerente@rrhh.demo', // Corregido correo según simulate
                password: 'password123'
            })
        });

        const loginData: any = await loginRes.json();

        if (!loginRes.ok) throw new Error(`Login failed: ${loginRes.status} ${JSON.stringify(loginData)}`);

        const token = loginData.accessToken || loginData.data?.accessToken;
        if (!token) throw new Error('No se obtuvo token del login');

        console.log('Login exitoso. Token obtenido.');

        console.log('\n--- TEST 2: CONFIG ---');
        const configRes = await fetch(`${API_URL}/config`, {
            headers: { Authorization: `Bearer ${token}` }
        });
        const configData = await configRes.json();
        console.log('Config response status:', configRes.status);

        console.log('\n--- TEST 3: BLOQUEOS TREND ---');
        const trendRes = await fetch(`${API_URL}/reportes/bloqueos-trend`, {
            headers: { Authorization: `Bearer ${token}` }
        });
        const trendData = await trendRes.json();
        console.log('Bloqueos Trend results:', Array.isArray(trendData) ? `Registros: ${trendData.length}` : 'Error');

        console.log('\n--- TEST 4: PROYECTOS ---');
        const projRes = await fetch(`${API_URL}/proyectos`, {
            headers: { Authorization: `Bearer ${token}` }
        });
        const projData: any = await projRes.json();
        const items = projData.items || projData;
        console.log(`Proyectos encontrados: ${Array.isArray(items) ? items.length : 'N/A'}`);

        console.log('\n--- TEST FINALIZADO CON ÉXITO ---');
    } catch (error: any) {
        console.error('ERROR EN PRUEBA DE BACKEND:');
        console.error(error.message || error);
    }
}

testBackend();
