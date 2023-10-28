curl -sS 'https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x14aa40ec0831756756d7f66c4f4ea0aae5267a6c' | gpg --dearmor | tee /etc/apt/keyrings/ppa_ondrej_php.gpg > /dev/null \
&& echo "deb [signed-by=/etc/apt/keyrings/ppa_ondrej_php.gpg] https://ppa.launchpadcontent.net/ondrej/php/ubuntu jammy main" > /etc/apt/sources.list.d/ppa_ondrej_php.list \
&& apt-get update \
&& apt-get install -y openssl php8.2-cli php8.2-bcmath php8.2-curl php8.2-mbstring php8.2-mysql php8.2-tokenizer php8.2-xml php8.2-zip \
&& curl -sLS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer

# To set the default /usr/bin/php bin
sudo update-alternatives --config php
