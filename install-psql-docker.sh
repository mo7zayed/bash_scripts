
# Note: for pgadmin4 when adding a server you need
# to set the host to the docker localhost ip address "172.17.0.1" then add the port that was exposed from the psql container
# https://www.youtube.com/watch?v=3v5VLS-oWKs
docker run -d -p 5432:5432 -e POSTGRES_PASSWORD=postgres --name pg postgres &&
docker run -d -e PGADMIN_DEFAULT_EMAIL="root@root.com" -e PGADMIN_DEFAULT_PASSWORD="root" -p 5555:80 --name pgadmin dpage/pgadmin4
