#!/usr/bin/env bash
# Kijiji Search API – cURL example
# Usage: PILOTERR_API_KEY=your-key ./search.sh
set -euo pipefail

curl -sS -G "https://api.piloterr.com/v2/kijiji/search" \
  -H "x-api-key: ${PILOTERR_API_KEY}" \
  --data-urlencode query=https://www.kijiji.ca/b-bikes/city-of-toronto/c644l1700273
