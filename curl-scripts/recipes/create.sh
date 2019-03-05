#!/bin/bash
curl "http://localhost:4741/recipes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "recipes: {
      "name": "'"${NAME}"'",
      "description": "'"${DESCRIPTION}"'"
    }
  }'

echo
