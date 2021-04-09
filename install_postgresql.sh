sudo apt update && sudo apt install postgresql postgresql-contrib

## Create root user
# ```sql
# sudo -u postgres createuser -s -i -d -r -l -w root
# sudo -u postgres psql -c "ALTER ROLE root WITH PASSWORD 'root';"
# ```