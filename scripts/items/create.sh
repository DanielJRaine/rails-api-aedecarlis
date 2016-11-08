curl -v http://localhost:4741/items \
  -H 'Content-Type: multipart/form-data' \
  -H 'Accept: application/json' \
  -F "item[name]=Zoe" \
  -F "item[body]=@Zoe.jpg;type=image/jpg" \
  -F "item[artform]=visual" \
  -F "item[portfolio]=fine-arts" \
  -F "item[section]=musician-portraits"
  
