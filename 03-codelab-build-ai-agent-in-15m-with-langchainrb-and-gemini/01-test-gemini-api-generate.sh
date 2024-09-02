#!/bin/bash

set -euo pipefail

source .env

echo "GEMINI_API_KEY found: '$GEMINI_API_KEY' (if its empty, you need to populate .env with proper value.)"

curl -H 'Content-Type: application/json' \
     -d '{"contents":[
            {"role": "user",
              "parts":[{"text": "Explain whats so brilliant about Ruby on Rails vs similar frameworks in 2 paragraphs"}]}]}' \
     "https://generativelanguage.googleapis.com/v1/models/gemini-pro:generateContent?key=${GEMINI_API_KEY}" |
        tee response-01.json

echo
echo '== Gemini answer =='
echo
cat response-01.json | jq -r '.candidates[0].content.parts[0].text'
