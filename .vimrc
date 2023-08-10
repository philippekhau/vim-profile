call plug#begin()

Plug 'doums/darcula'
Plug 'preservim/nerdtree'
Plug 'StanAngeloff/php.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'stephpy/vim-php-cs-fixer'

call plug#end()

set nocompatible
syntax on
filetype plugin indent on
set number
set laststatus=2 ignorecase smartcase hlsearch incsearch

" show existing tag with 4 spaces width
set tabstop=4
" soft tab width
set softtabstop=4
set shiftwidth=4
" 4 spaces tab
set expandtab

" indentation made from visual mode
set smartindent

" keybindings
nnoremap <C-d> yyp<CR>

" color scheme
colorscheme darcula
set termguicolors

hi phpIdentifier guifg=#8F70A0
hi phpVarSelector guifg=#8F70A0
hi phpComment guifg=#5B9355
hi phpClasses guifg=#A0B0B7

"  nerd tree
execute "set <M-f>=\ef"
nnoremap <M-f> :NERDTreeToggle<CR>
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" php-cs-fixer
let g:php_cs_fixer_path = "~/.vim/php-cs-fixer.phar"
let g:php_cs_fixer_php_path = "/usr/bin/php"
let g:php_cs_fixer_rules = "@PSR2"
let g:php_cs_fixer_ignore_env = 1
execute "set <M-r>=\er"
nnoremap <M-r> :call PhpCsFixerFixFile()<CR>

