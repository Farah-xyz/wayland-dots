-----------------------------------------------------------
-- Plugin manager configuration file:
-----------------------------------------------------------
-- Plugin manager: lazy.nvim
-- URL: https://github.com/folke/lazy.nvim

------------------
-- Bootstrap Nvim:
------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

----------------
-- Start setup:
----------------
require("lazy").setup({
  -------------------------------
  -- Vim Plugins With VimScripts:
  -------------------------------
  "sheerun/vim-polyglot", -- Syntax highlighting
  "mattn/emmet-vim",      -- Emmet For Html And Css
  "tpope/vim-surround",   -- Surround For Bracket And Tags
  "tpope/vim-commentary", -- Easy Commmante
  ----------------------------
  -- Neovim Plugins With Lua:
  ----------------------------
  {"kyazdani42/nvim-web-devicons", lazy = true },
  {"catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {"nvim-lualine/lualine.nvim"},
  {"lukas-reineke/indent-blankline.nvim" },
  {'goolord/alpha-nvim'},
  {'kyazdani42/nvim-tree.lua'},
  {"windwp/nvim-autopairs",
    event = 'InsertEnter',
    config = function()
      require('nvim-autopairs').setup{}
    end
  },
})
