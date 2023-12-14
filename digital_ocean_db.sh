
# to allow tables without a primary key in digital ocean
curl -X PATCH \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer your token" \
  -d '{"config": { "sql_require_primary_key": false }}' \
  https://api.digitalocean.com/v2/databases/32ace765-7bb3-4b14-916a-2d64064beaf3/config
