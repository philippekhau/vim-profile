call plug#begin()

Plug 'doums/darcula'
Plug 'preservim/nerdtree'
Plug 'StanAngeloff/php.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'stephpy/vim-php-cs-fixer'

Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/ncm2-phpactor'

Plug 'mattn/emmet-vim'

Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

Plug 'ctrlpvim/ctrlp.vim'

Plug 'noahfrederick/vim-laravel'
Plug 'leafOfTree/vim-vue-plugin'
Plug 'pangloss/vim-javascript'

call plug#end()

set noswapfile
set mouse=a

set number
set laststatus=2
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set smarttab
inoremap " ""<left>
inoremap ' ''<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" keybindings
map <C-B> :!php -l %<CR>

map <C-I> :PlugInstall<CR>

map <C-s> :w<CR>
map <C-w> :wq<CR>
map <C-q> :qa<CR>

map <C-d> yyp<CR>

map <C-Left> :wincmd h<CR>
map <C-Right> :wincmd l<CR>

map <M-j> <C-n>

" color scheme
colorscheme darcula
set termguicolors

hi VueComponentName guifg=#26bda4

hi javaScriptNumber guifg=#6897BB

hi VueValue guifg=#9876AA
hi phpIdentifier guifg=#9876AA
hi phpVarSelector guifg=#9876AA
hi phpMethodsVar guifg=#9876AA

hi phpComment guifg=#5B9355
hi jsComment guifg=#5B9355
hi javascriptComment guifg=#5B9355

hi phpClasses guifg=#A9B7C6
hi phpMemberSelector guifg=#A9B7C6
hi phpOperator guifg=#A9B7C6

hi phpMethod guifg=#FFC66D

hi jsFutureKeys guifg=#cc7832
hi phpInclude guifg=#cc7832

"  nerd tree
map <leader>n :NERDTreeFocus<CR>
map <M-f> :NERDTreeToggle<CR>
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let NERDTreeMapOpenVSplit='v'
let NERDTreeMapOpenSplit='h'

" php-cs-fixer
let g:php_cs_fixer_path = "~/.vim/php-cs-fixer.phar"
let g:php_cs_fixer_php_path = "/usr/bin/php"
let g:php_cs_fixer_rules = "@PSR2"
let g:php_cs_fixer_ignore_env = 1
map <M-r> :call PhpCsFixerFixFile()<CR>

autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

" vim-commentary
autocmd FileType php setlocal commentstring=//%s

" open at last location
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
