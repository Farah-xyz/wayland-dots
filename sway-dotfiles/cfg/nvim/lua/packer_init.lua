------------------------------------------------------------
-- Plugin manager configuration file			              ----
------------------------------------------------------------
-- Plugin manager: packer.nvim
-- url: https://github.com/wbthomason/packer.nvim

---------------------------------------------------------------
-- Automatically install packer				                      ---
---------------------------------------------------------------
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
  vim.o.runtimepath = vim.fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath
end

---------------------------------------------------------------------------------
-- Autocommand that reloads neovim whenever you save the packer_init.lua file ---
---------------------------------------------------------------------------------
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer_init.lua source <afile> | PackerSync
  augroup end
]]

---------------------------------------------------------------
--- Use a protected call so we don't error out on first use ---
---------------------------------------------------------------
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

------------------------------------
--- 	Install plugins		        ----
------------------------------------
return packer.startup(function(use)
  -- Add you plugins here:
    use "wbthomason/packer.nvim" -- packer can manage itself

    -- Vim Plugins
    use("tpope/vim-surround")
    use("tpope/vim-commentary")
    use("mattn/emmet-vim")
    use("alvan/vim-closetag")
    use("jiangmiao/auto-pairs")
    use("lilydjwg/colorizer")
    use("sheerun/vim-polyglot")
    -- easier coding
    use("nvim-tree/nvim-web-devicons")
    use("goolord/alpha-nvim")
    use("lukas-reineke/indent-blankline.nvim")
    use("akinsho/toggleterm.nvim")
    use({
      "aurum77/live-server.nvim",
        run = function()
          require"live_server.util".install()
        end,
        cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
      })
    -- navigation
    use("ibhagwan/fzf-lua")
    use("kyazdani42/nvim-tree.lua")
    use("akinsho/bufferline.nvim")
    -- Color theme
    use ({ "catppuccin/nvim", as = "catppuccin" })
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
