--[[

Neovim init file
Maintainer: brainf+ck
Website: https://github.com/brainfucksec/neovim-lua

--]]

-- Import Lua modules
require('core/lazy')
require('core/autocmds')
require('core/keymaps')
require('core/colors')
require('core/statusline')
require('core/options')
require('lsp/lspconfig')
require('plugins/nvim-tree')
require('plugins/nvim-indent')
require('plugins/nvim-cmp')
require('plugins/nvim-treesitter')
require('plugins/nvim-mason')
require('plugins/nvim-indent')
require('plugins/nvim-alpha')
