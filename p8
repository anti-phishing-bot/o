const token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3BsYXllcmFwaS5odWJnYW1pbmcuY29tL2FwaS9wbGF5ZXIvYXV0aC9sb2dpbiIsImlhdCI6MTc5MzMwNDI5NSwiZXhwIjoxNzkzNDc3MDk1LCJuYmYiOjE3OTMzMDQyOTUsImp0aSI6ImF3aEJRRnE4NGUxVjlOYVAiLCJzdWIiOiIxMDEzMjY1MyIsInBydiI6IjFkMGEwMjBhY2Y1YzRiNmM0OTc5ODlkZjFhYmYwZmJkNGU4YzhkNjMiLCJ3ZWJzaXRlX2lkIjoyNH0.AmXosZKSvDqyTM0J71vuEqUksmiccwRse8Sl-VAw4_E';
const sleep = ms => new Promise(r => setTimeout(r, ms));
(async () => {
  try {
    const r = await fetch('http://127.0.0.1:3000/api/user/profile', {
      method: 'GET',
      headers: {
        'Authorization': 'Bearer ' + token,
        'Accept': 'application/json',
        'X-Lang': 'tr',
        'X-Device': 'web',
        'Host': 'titobet.com',
        'Origin': 'https://titobet.com',
        'Referer': 'https://titobet.com/tr/settings/verify',
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36'
      }
    });
    const ok = r.status === 200;
    await r.text();
    if (ok) await sleep(40000);
  } catch (e) {}
})();
