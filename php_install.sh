sudo add-apt-repository ppa:ondrej/php

sudo apt install gcc openssl libssl-dev curl libcurl4-openssl-dev libpcre3-dev build-essential

# for php 7.1
sudo apt install -y php7.1 php7.1-common php7.1-curl php7.1-json php7.1-mbstring php7.1-mysql php7.1-xml php7.1-zip php7.1-dev php7.1-gd php7.1-redis php7.1-intl php7.1-sqlite3 php7.1-bcmath php7.1-pgsql

# for php 7.2
sudo apt install -y php7.2 php7.2-common php7.2-curl php7.2-json php7.2-mbstring php7.2-mysql php7.2-xml php7.2-zip php7.2-dev php7.2-gd php7.2-redis php7.2-intl php7.2-sqlite3 php7.2-bcmath php7.2-pgsql

# for php 7.3
sudo apt install -y php7.3 php7.3-common php7.3-curl php7.3-json php7.3-mbstring php7.3-mysql php7.3-xml php7.3-zip php7.3-dev php7.3-gd php7.3-redis php7.3-intl php7.3-sqlite3 php7.3-bcmath php7.3-pgsql

# for php 7.4
sudo apt install -y php7.4 php7.4-common php7.4-curl php7.4-json php7.4-mbstring php7.4-mysql php7.4-xml php7.4-zip php7.4-dev php7.4-gd php7.4-redis php7.4-intl php7.4-sqlite3 php7.4-bcmath php7.4-pgsql

# for php8.0
sudo apt install -y php8.0 php8.0-common php8.0-curl php8.0-mbstring php8.0-mysql php8.0-xml php8.0-zip php8.0-gd php8.0-redis php8.0-intl php8.0-bcmath php8.0-dev

# for php8.1
sudo apt install -y php8.1 php8.1-common php8.1-curl php8.1-mbstring php8.1-mysql php8.1-xml php8.1-zip php8.1-gd php8.1-redis php8.1-intl php8.1-bcmath php8.1-dev

# after all if you want
apt remove --purge apache*

# install swoole | if using a specific php version just use --suffix=8.1
pecl install -D 'enable-sockets="no" enable-openssl="yes" enable-http2="yes" enable-mysqlnd="yes" enable-swoole-json="no" enable-swoole-curl="yes" enable-cares="yes" with-postgres="yes"' openswoole;
bash -c "cat > /etc/php/<PHP_VERSION>/mods-available/openswoole.ini << EOF
; Configuration for Swoole
; priority=25
extension=openswoole
EOF";
phpenmod -s cli openswoole;
php -m | grep openswoole;

# To set the default /usr/bin/php bin
sudo update-alternatives --config php
