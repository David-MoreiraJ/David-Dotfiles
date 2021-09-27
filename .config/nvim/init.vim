" =============================================================
"| ▓█████▄  ▄▄▄    ██▒   █▓ ██▓▓█████▄                        |
"| ▒██▀ ██▌▒████▄ ▓██░   █▒▓██▒▒██▀ ██▌   +-+-+-+-+-+-+-+-+   |
"| ░██   █▌▒██  ▀█▄▓██  █▒░▒██▒░██   █▌  <|D|O|T|F|I|L|E|S|>  |
"| ░▓█▄   ▌░██▄▄▄▄██▒██ █░░░██░░▓█▄   ▌   +-+-+-+-+-+-+-+-+   |
"| ░▒████▓  ▓█   ▓██▒▒▀█░  ░██░░▒████▓                        |
"|  ▒▒▓  ▒  ▒▒   ▓▒█░░ ▐░  ░▓   ▒▒▓  ▒                        |
"|  ░ ▒  ▒   ▒   ▒▒ ░░ ░░   ▒ ░ ░ ▒  ▒                        |
"|  ░ ░  ░   ░   ▒     ░░   ▒ ░ ░ ░  ░                        |
"|    ░          ░  ░   ░   ░     ░                           |
"|  ░                  ░        ░                             |
"|  ███▄ ▄███▓ ▒█████   ██▀███  ▓█████  ██▓ ██▀███   ▄▄▄      |
"| ▓██▒▀█▀ ██▒▒██▒  ██▒▓██ ▒ ██▒▓█   ▀ ▓██▒▓██ ▒ ██▒▒████▄    |
"| ▓██    ▓██░▒██░  ██▒▓██ ░▄█ ▒▒███   ▒██▒▓██ ░▄█ ▒▒██  ▀█▄  |
"| ▒██    ▒██ ▒██   ██░▒██▀▀█▄  ▒▓█  ▄ ░██░▒██▀▀█▄  ░██▄▄▄▄██ |
"| ▒██▒   ░██▒░ ████▓▒░░██▓ ▒██▒░▒████▒░██░░██▓ ▒██▒ ▓█   ▓██▒|
"| ░ ▒░   ░  ░░ ▒░▒░▒░ ░ ▒▓ ░▒▓░░░ ▒░ ░░▓  ░ ▒▓ ░▒▓░ ▒▒   ▓▒█░|
"| ░  ░      ░  ░ ▒ ▒░   ░▒ ░ ▒░ ░ ░  ░ ▒ ░  ░▒ ░ ▒░  ▒   ▒▒ ░|
"| ░      ░   ░ ░ ░ ▒    ░░   ░    ░    ▒ ░  ░░   ░   ░   ▒   |
"|        ░       ░ ░     ░        ░  ░ ░     ░           ░  ░|
"|============================================================= 

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'ap/vim-css-color'
Plug 'itchyny/lightline.vim'
Plug 'KeitaNakamura/neodark.vim'
Plug 'morhetz/gruvbox'

call plug#end()

syntax enable

set termguicolors
set number
set relativenumber
set mouse=a
set mouse=nicr
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set clipboard=unnamedplus
set scrolloff=4

"""""""""""""""""""""""""""""""""""""""
" NERDTree
"""""""""""""""""""""""""""""""""""""""

nnoremap <f2> :NERDTreeToggle <cr>
let g:NERDTreeDirArrowExpandable = '>>'
let g:NERDTreeDirArrowCollapsible = 'V'
let g:NERDTreeMinimalUI = 1

"""""""""""""""""""""""""""""""""""""""
" PowerLine
"""""""""""""""""""""""""""""""''""""""

let g:lightline = {
    \ 'colorscheme': 'seoul256',
    \}
""""""""""""""""""""""""""""""""""""""
" Colorscheme
""""""""""""""""""""""""""""""""""""""

colorscheme gruvbox
set background=dark

""""""""""""""""""""""""""""""""""""""

