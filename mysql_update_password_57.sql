UPDATE mysql.user SET plugin = 'mysql_native_password' WHERE User = 'root';

UPDATE mysql.user SET host='%' WHERE User='root';

UPDATE mysql.user SET authentication_string = PASSWORD('root') where User = 'root';

GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;
