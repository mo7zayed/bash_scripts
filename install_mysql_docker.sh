# create mysql container
docker run --name mysql5.7 -v mysql5.7:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -p 3307:3306 -d mysql:5.7.32

# then run these queries in mysql
# ```sql
# UPDATE mysql.user SET Host='%' WHERE User='root';
# UPDATE mysql.db SET Host='%' WHERE User='root';
# FLUSH PRIVILEGES;
# ```

# import your databases if exists
# docker exec -i mysql_container mysql -u root -proot < /media/mo7zayed/Drive/alldb-01-01-2020.sql

# install phpmyadmin container
docker run --name phpmyadmin -d --link mysql5.7:db -p 9000:80 phpmyadmin:latest

# a phpmyadmin container for the mysql installed in localhost
## if it did not work on the localhost mysql edit /etc/mysql/mysql.conf.d/mysqld.cnf
## and change bind-address to 0.0.0.0 `bind-address = 0.0.0.0` instead of `bind-address = 127.0.0.1`
docker run --name phpmyadmin_local -d --add-host host.docker.internal:host-gateway -e PMA_HOST=host.docker.internal -e PMA_PORT=3306 -p 9001:80 phpmyadmin