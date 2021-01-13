sudo apt install wget -y &&
wget https://dev.mysql.com/get/mysql-apt-config_0.8.12-1_all.deb &&
sudo dpkg -i mysql-apt-config_0.8.12-1_all.deb &&
sudo apt-get update &&
sudo apt install -f mysql-client=5.7.32-1ubuntu18.04 mysql-community-server=5.7.32-1ubuntu18.04 mysql-server=5.7.32-1ubuntu18.04 &&
sudo mysql_secure_installation