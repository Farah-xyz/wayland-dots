--[[
Neovim init file
Maintainer: Farah Aka Skoll
Website: https://github.com/Farah-xyz/wayland-dots
--]]
----------------------
-- Import Lua modules:
----------------------
-- Core
require('core/lazy')
require('core/options')
require('core/autocmds')
require('core/keymaps')
-- Plugins
require('plugins/colors-nvim')
require('plugins/statusline-nvim')
require('plugins/alpha-nvim')
require('plugins/indent-nvim')
-- AutoCompelete
require('lsp/lspconfig')
require('plugins/treesitter-nvim')
require('plugins/mason-nvim')
require('plugins/cmp-nvim')

