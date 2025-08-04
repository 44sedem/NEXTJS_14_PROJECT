// Diagnostic script to check dependencies
const fs = require('fs');
const path = require('path');

console.log('=== Dependency Diagnostic ===');

// Check if mime-db exists in node_modules
const mimeDbPath = path.join(__dirname, 'node_modules', 'mime-db');
console.log('mime-db exists:', fs.existsSync(mimeDbPath));

// Check if mime-types exists (parent of mime-db)
const mimeTypesPath = path.join(__dirname, 'node_modules', 'mime-types');
console.log('mime-types exists:', fs.existsSync(mimeTypesPath));

// Check axios dependencies
const axiosPath = path.join(__dirname, 'node_modules', 'axios');
if (fs.existsSync(axiosPath)) {
  const axiosPackage = JSON.parse(fs.readFileSync(path.join(axiosPath, 'package.json'), 'utf8'));
  console.log('axios dependencies:', Object.keys(axiosPackage.dependencies || {}));
}

// Check .next directory structure
const nextPath = path.join(__dirname, '.next');
console.log('.next exists:', fs.existsSync(nextPath));

const vendorChunksPath = path.join(__dirname, '.next', 'static', 'vendor-chunks');
console.log('vendor-chunks directory exists:', fs.existsSync(vendorChunksPath));

// Check for any mime-db related files
const staticPath = path.join(__dirname, '.next', 'static');
if (fs.existsSync(staticPath)) {
  const findMimeFiles = (dir) => {
    const files = fs.readdirSync(dir, { withFileTypes: true });
    for (const file of files) {
      const fullPath = path.join(dir, file.name);
      if (file.isDirectory()) {
        findMimeFiles(fullPath);
      } else if (file.name.includes('mime')) {
        console.log('Found mime-related file:', fullPath);
      }
    }
  };
  findMimeFiles(staticPath);
}

console.log('=== End Diagnostic ===');