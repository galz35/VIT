async function test() {
    const base = 'http://localhost:3000/api';
    console.log('Testing Gustavo Login...');
    try {
        const res = await fetch(base + '/auth/login', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ correo: 'gustavo@claro.com.ni', password: 'password123' })
        });
        const loginData = await res.json();
        console.log('Gustavo Result:', res.status, JSON.stringify(loginData));
    } catch (e) {
        console.error('Error:', e.message);
    }
}
test();
