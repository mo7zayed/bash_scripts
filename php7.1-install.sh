# to fix libssl1.1 issue see -> https://askubuntu.com/a/1403683
apt-get update \
&& apt-get install -y gnupg gosu curl ca-certificates zip unzip git supervisor libcap2-bin libpng-dev python2 dnsutils librsvg2-bin \
&& curl -sS 'https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x14aa40ec0831756756d7f66c4f4ea0aae5267a6c' | gpg --dearmor | tee /usr/share/keyrings/ppa_ondrej_php.gpg > /dev/null \
&& echo "deb [signed-by=/usr/share/keyrings/ppa_ondrej_php.gpg] https://ppa.launchpadcontent.net/ondrej/php/ubuntu focal main" > /etc/apt/sources.list.d/ppa_ondrej_php.list \
&& apt-get update \
&& apt-get install -y php7.1-cli php7.1-dev \
    php7.1-pgsql php7.1-sqlite3 php7.1-gd php7.1-imagick \
    php7.1-curl php7.1-memcached \
    php7.1-imap php7.1-mysql php7.1-mbstring \
    php7.1-xml php7.1-zip php7.1-bcmath php7.1-soap \
    php7.1-intl php7.1-readline php7.1-pcov \
    php7.1-msgpack php7.1-igbinary php7.1-ldap \
    php7.1-redis php7.1-xdebug
