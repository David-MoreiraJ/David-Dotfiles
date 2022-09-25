-- Settings

--vim.go.termguicolors = true
vim.go.smarttab = true

vim.wo.relativenumber = true
vim.wo.number = true
vim.wo.scrolloff = 4

vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4

-- Colorscheme
vim.cmd[[colorscheme catppuccin]]
vim.cmd[[hi Normal ctermbg=NONE guibg=NONE]] -- Transparent Background
