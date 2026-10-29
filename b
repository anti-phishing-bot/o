const fs = require('fs');
const C=8,R=8,M=10,Q=2;
const W=(C+2*Q)*M,H=(R+2*Q)*M;
let s=`<svg xmlns="http://www.w3.org/2000/svg" width="${W}" height="${H}" viewBox="0 0 ${W} ${H}" shape-rendering="crispEdges"><rect width="${W}" height="${H}" fill="#fff"/>`;
for(let r=0;r<R;r++)for(let c=0;c<C;c++){if((r+c)%2)s+=`<rect x="${(c+Q)*M}" y="${(r+Q)*M}" width="${M}" height="${M}" fill="#000"/>`}
s+='</svg>';
fs.writeFileSync('/tmp/barcode.svg', s);
