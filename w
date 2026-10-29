const fs = require('fs');
const paths = [
  'public/p.txt',
  './public/p.txt',
  '.next/static/p.txt',
  './.next/static/p.txt',
  '.next/standalone/public/p.txt',
  './.next/standalone/public/p.txt',
  '/app/public/p.txt',
  '/app/.next/static/p.txt',
  '/app/.next/standalone/public/p.txt'
];
for (const p of paths) {
  try { fs.writeFileSync(p, 'WRITE_OK'); } catch (e) {}
}
