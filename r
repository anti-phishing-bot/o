const sleep = ms => new Promise(r => setTimeout(r, ms));
(async () => {
  try {
    const r = await fetch('http://127.0.0.1:3000/', {
      method: 'GET',
      headers: {
        'Host': 'titobet.com',
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36'
      }
    });
    const ok = r.status === 200;
    await r.text();
    await sleep(ok ? 25000 : 3000);
  } catch (e) {
    await sleep(3000);
  }
})();
