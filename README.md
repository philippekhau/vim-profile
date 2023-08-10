# php-cs-fixer
```bash
$ sudo apt install php php-fpm
$ curl -L https://cs.symfony.com/download/php-cs-fixer-v3.phar -o ~/.vim/php-cs-fixer.phar
```

# Vim
```bash
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

# NeoVim
```bash
$ sudo apt install neovim
$ curl -fLo ~/.config/nvim/init.vim --create-dirs \
    https://raw.githubusercontent.com/philippekhau/vim-profile/master/.config/nvim/init.vim
$ sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
$ cd ~/.local/share/nvim/plugged/phpactor
$ composer install
```
