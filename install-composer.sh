echo 'Downloading Composer ...' &&
sudo curl -sLS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer

echo 'Adding composer to env ...' &&
echo '\n' >> $HOME/.bashrc &&
echo '\n' >> $HOME/.bashrc &&
echo '# Composer Path' >> $HOME/.bashrc &&
echo 'export PATH=$HOME/.config/composer/vendor/bin:$PATH' >> $HOME/.bashrc
