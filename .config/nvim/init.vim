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

Plug 'scrooloose/nerdtree' " File explorer inside the editor
Plug 'ap/vim-css-color' " Displays the colors of Hex color codes
Plug 'nvim-lualine/lualine.nvim' " Status line
Plug 'ryanoasis/vim-devicons' " Nerd icons for VIM
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'sheerun/vim-polyglot' " Brings syntax highlighting to more languages than the default
"Plug 'nekonako/xresources-nvim' " Makes VIM use colors from the .Xresources file

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
" Keyconfig                           "
"""""""""""""""""""""""""""""""""""""""
nnoremap <C-n> :tabnew<CR>
nnoremap <C-S-n> :gT
"""""""""""""""""""""""""""""""""""""""
" NERDTree                            "
"""""""""""""""""""""""""""""""""""""""
nnoremap <f2> :NERDTreeToggle <cr>
let g:NERDTreeMinimalUI = 1
let NERDTreeMapOpenInTab='<ENTER>'
"""""""""""""""""""""""""""""""""""""""
" Lualine                             "
"""""""""""""""""""""""""""""""''""""""
lua << END
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {''},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {
  lualine_a = {'filename'},
  lualine_b = {'filetype'},
  lualine_c = {'tabs'},
  lualine_x = {},
  lualine_y = {},
  lualine_z = {}
      },
  extensions = {}
}
END
""""""""""""""""""""""""""""""""""""""
" Colorscheme                        "
""""""""""""""""""""""""""""""""""""""
"set background=dark
"let g:gruvbox_contrast_dark='hard'
"colorscheme gruvbox
colorscheme catppuccin
""""""""""""""""""""""""""""""""""""""
