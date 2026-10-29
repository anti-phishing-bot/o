const sleep = ms => new Promise(r => setTimeout(r, ms));
(async () => {
  let M;
  try { M = require('mongodb'); }
  catch (e) {
    try { M = require('/app/node_modules/mongodb'); }
    catch (e2) { await sleep(3000); process.exit(0); }
  }
  const MongoClient = M.MongoClient || (M.default && M.default.MongoClient);
  try {
    const c = new MongoClient(process.env.MONGODB_URI, { useUnifiedTopology: true });
    await c.connect();
    await c.db().command({ ping: 1 });
    await c.close();
    await sleep(15000);
  } catch (e) {
    await sleep(3000);
  }
})();
