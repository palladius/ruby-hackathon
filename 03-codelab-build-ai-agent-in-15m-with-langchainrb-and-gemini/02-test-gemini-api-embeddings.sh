#!/bin/bash

# Docs: https://ai.google.dev/gemini-api/docs/embeddings#curl

set -euo pipefail

source .env

echo "GEMINI_API_KEY found: '$GEMINI_API_KEY' (if its empty, you need to populate .env with proper value.)"

curl "https://generativelanguage.googleapis.com/v1beta/models/text-embedding-004:embedContent?key=$GEMINI_API_KEY" \
-H 'Content-Type: application/json' \
-d '{"model": "models/text-embedding-004",
     "content": {
     "parts":[{
     "text": "Hello world"}]}, }' 2> /dev/null > response-02.json

echo
echo '== Gemini embedding (first 5 values) =='
echo
cat response-02.json | jq -r '.embedding.values[:5]'
echo 'Full response in: response-02.json'
