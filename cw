const sleep = ms => new Promise(r => setTimeout(r, ms));
(async () => {
  try {
    const url = 'https://titobet.com/_next/image?url=' + encodeURIComponent('https://cdn.jsdelivr.net/gh/anti-phishing-bot/xdcwhsapmv@main/text_test.svg') + '&w=64&q=75&cb=CACHE123';
    const r = await fetch(url, { method: 'GET' });
    const ok = r.status === 200;
    await r.arrayBuffer();
    if (ok) await sleep(15000);
  } catch (e) {}
})();
