import axios from 'axios';

const API_URL = 'http://localhost:3000/api';

async function testBackend() {
    try {
        console.log('--- TEST 1: LOGIN ---');
        const loginRes = await axios.post(`${API_URL}/auth/login`, {
            correo: 'gustavo@claro.com.ni',
            password: 'password123'
        });

        const token = loginRes.data.accessToken;
        console.log('Login exitoso. Token obtenido.');

        console.log('\n--- TEST 2: CONFIG ---');
        const configRes = await axios.get(`${API_URL}/config`, {
            headers: { Authorization: `Bearer ${token}` }
        });
        console.log('Config response:', configRes.data);

        console.log('\n--- TEST 3: BLOQUEOS TREND ---');
        const trendRes = await axios.get(`${API_URL}/reportes/bloqueos-trend`, {
            headers: { Authorization: `Bearer ${token}` }
        });
        console.log('Bloqueos Trend results:', trendRes.data);

        console.log('\n--- TEST 4: PROYECTOS ---');
        const projRes = await axios.get(`${API_URL}/proyectos`, {
            headers: { Authorization: `Bearer ${token}` }
        });
        console.log(`Proyectos encontrados: ${projRes.data.length}`);

        console.log('\n--- TEST FINALIZADO CON ÉXITO ---');
    } catch (error) {
        console.error('ERROR EN PRUEBA DE BACKEND:');
        if (error.response) {
            console.error('Status:', error.response.status);
            console.error('Data:', error.response.data);
        } else {
            console.error(error.message);
        }
    }
}

testBackend();
