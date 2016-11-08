curl --include --request PATCH http://localhost:4741/items/1 \
  --header "Content-Type: application/json" \
  --data '{
    "item": {
      "name": "ZoeAndAccordion"
    }
  }'

  curl --include --request PATCH -v http://localhost:4741/items \
    -H 'Content-Type: application/json' \
    -F "item[name]=ZoeAndAccordion"
