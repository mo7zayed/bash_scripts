echo 'Downloading Composer ...' &&
curl -sS https://getcomposer.org/installer -o composer-setup.php &&
HASH=`curl -sS https://composer.github.io/installer.sig` &&
echo $HASH &&
php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" &&
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

echo 'Adding composer to env ...' &&
echo '\n' >> $HOME/.bashrc &&
echo '\n' >> $HOME/.bashrc &&
echo '# Composer Path' >> $HOME/.bashrc &&
echo 'export PATH=$HOME/.config/composer/vendor/bin:$PATH' >> $HOME/.bashrc