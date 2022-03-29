"==============================================================
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
"============================================================== 

"""""""""""""""""""""""""""""""""""""""
" Plugin calls                        "
"""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree' " File explorer
Plug 'ap/vim-css-color' " Displays the colors of Hex color codes
Plug 'vim-airline/vim-airline' " Status line
Plug 'vim-airline/vim-airline-themes' " Themes for the status line
Plug 'ryanoasis/vim-devicons' " Nerd icons for VIM
Plug 'nekonako/xresources-nvim' " Makes VIM use colors from the .Xresources file
Plug 'sheerun/vim-polyglot'

"Plug 'morhetz/gruvbox' "Gruvbox theme

call plug#end()

"""""""""""""""""""""""""""""""""""""""
" VIM Config                          "
"""""""""""""""""""""""""""""""""""""""

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
set nocompatible

"""""""""""""""""""""""""""""""""""""""
" NERDTree                            "
"""""""""""""""""""""""""""""""""""""""
nnoremap <f2> :NERDTreeToggle <cr>
let g:NERDTreeMinimalUI = 1
"""""""""""""""""""""""""""""""""""""""
" Airline                             "
"""""""""""""""""""""""""""""""''""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

let g:airline_theme = 'onedark'
""""""""""""""""""""""""""""""""""""""
" Colorscheme                        "
""""""""""""""""""""""""""""""""""""""
"set background=dark
"let g:gruvbox_contrast_dark='hard'
"colorscheme gruvbox
colorscheme xresources
""""""""""""""""""""""""""""""""""""""
