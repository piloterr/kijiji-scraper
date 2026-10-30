// Kijiji Search API – Node.js example (Node 18+, native fetch, ES module)
// Usage: PILOTERR_API_KEY=your-key node search.mjs

const params = new URLSearchParams({
  "query": "https://www.kijiji.ca/b-bikes/city-of-toronto/c644l1700273",
});

const response = await fetch(`https://api.piloterr.com/v2/kijiji/search?${params}`, {
  headers: { "x-api-key": process.env.PILOTERR_API_KEY },
  signal: AbortSignal.timeout(60_000),
});

if (!response.ok) {
  console.error(`Piloterr error ${response.status}: ${await response.text()}`);
  process.exit(1);
}

console.log(JSON.stringify(await response.json(), null, 2));
