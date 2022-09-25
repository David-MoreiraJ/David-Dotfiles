-- Plugins

vim.go.termguicolors = true

require('packer').startup(function()
    use 'wbthomason/packer.nvim' -- Plugin manager
    use 'norcalli/nvim-colorizer.lua' -- Color highlighter
    use 'kyazdani42/nvim-web-devicons' -- Nerd icons for VIM
    use({"catppuccin/nvim", as = "catppuccin"})
    use 'sheerun/vim-polyglot' -- Brings syntax highlighting to more languages than the default
    use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
}
end)

-- Lualine
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

-- Colorizer
require('colorizer').setup()
