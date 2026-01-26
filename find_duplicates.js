const fs = require('fs');
const content = fs.readFileSync('d:/planificacion/clarity-pwa/src/services/clarity.service.ts', 'utf8');
const lines = content.split('\n');
const keys = {};
lines.forEach((line, i) => {
    const match = line.match(/^\s*([a-zA-Z0-9]+)\s*:/);
    if (match) {
        const key = match[1];
        if (keys[key]) {
            console.log(`Duplicate key: ${key} at lines ${keys[key]} and ${i + 1}`);
        }
        keys[key] = i + 1;
    }
});
