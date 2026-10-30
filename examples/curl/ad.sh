#!/usr/bin/env bash
# Kijiji Ad API – cURL example
# Usage: PILOTERR_API_KEY=your-key ./ad.sh
set -euo pipefail

curl -sS -G "https://api.piloterr.com/v2/kijiji/ad" \
  -H "x-api-key: ${PILOTERR_API_KEY}" \
  --data-urlencode query=https://www.kijiji.ca/v-cell-phone-accessories/city-of-toronto/nateroso-iphone-16-case-cute-bear-honey-design/1745477275
