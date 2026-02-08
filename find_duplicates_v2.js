const fs = require('fs');
const content = fs.readFileSync('d:/planificacion/clarity-pwa/src/services/clarity.service.ts', 'utf8');

// Simple parser for object literal keys
let openBraces = 0;
let currentObject = null;
const lines = content.split('\n');
const keyStack = [];

lines.forEach((line, i) => {
    // Check for start of clarityService
    if (line.includes('export const clarityService = {')) {
        currentObject = 'clarityService';
        keyStack.push({});
        return;
    }

    if (currentObject) {
        // This is very simplified, just checking for keys at the start of a line
        const keyMatch = line.match(/^\s*([a-zA-Z0-9]+)\s*:/);
        if (keyMatch) {
            const key = keyMatch[1];
            if (keyStack[keyStack.length - 1][key]) {
                console.log(`Duplicate key: ${key} at lines ${keyStack[keyStack.length - 1][key]} and ${i + 1}`);
            }
            keyStack[keyStack.length - 1][key] = i + 1;
        }

        if (line.includes('{')) openBraces += (line.match(/{/g) || []).length;
        if (line.includes('}')) {
            openBraces -= (line.match(/}/g) || []).length;
            if (openBraces < 0) {
                // End of object (assuming it started at level 0)
                currentObject = null;
                keyStack.pop();
                openBraces = 0;
            }
        }
    }
});
