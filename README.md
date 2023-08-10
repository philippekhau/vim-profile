# install php
```bash
sudo apt update && sudo apt install -y software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install --no-install-recommends php8.1 php8.1-fpm
```

# php-cs-fixer
```bash
curl -L https://cs.symfony.com/download/php-cs-fixer-v3.phar -o ~/.vim/php-cs-fixer.phar
```

# Vim
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

# NeoVim
```bash
sudo apt install neovim
curl -fLo ~/.config/nvim/init.vim --create-dirs \
    https://raw.githubusercontent.com/philippekhau/vim-profile/master/.config/nvim/init.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
curl -L https://cs.symfony.com/download/php-cs-fixer-v3.phar -o ~/.vim/php-cs-fixer.phar

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

cd ~/.local/share/nvim/plugged/phpactor
composer install
```
