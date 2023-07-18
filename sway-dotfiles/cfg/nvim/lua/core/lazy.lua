-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------
-- Plugin manager: lazy.nvim
-- URL: https://github.com/folke/lazy.nvim

-- Bootstrap lazy.nvim
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

-- Use a protected call so we don't error out on first use
local status_ok, lazy = pcall(require, 'lazy')
if not status_ok then
  return
end

-- Start setup
lazy.setup({
  spec = {
    -- Colorscheme:
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    -- Statusline
    {'nvim-lualine/lualine.nvim'},

    -- Icons
    { 'kyazdani42/nvim-web-devicons', lazy = true },

    -- Dashboard (start screen)
    {'goolord/alpha-nvim'},

    -- Toggle Terminal
    {'akinsho/toggleterm.nvim', version = "*", config = true},

    -- Indent line
    { 'lukas-reineke/indent-blankline.nvim' },

    -- File explorer
    {'kyazdani42/nvim-tree.lua'},

    -- Autopair
    {
      'windwp/nvim-autopairs',
      event = 'InsertEnter',
      config = function()
        require('nvim-autopairs').setup{}
      end
    },

    -- Commenter
    {
        "numToStr/Comment.nvim",
        config = function()
            require('Comment').setup()
        end
    },

    -- Surround
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },

    -- Git labels
    {
      'lewis6991/gitsigns.nvim',
      lazy = true,
      dependencies = {
        'nvim-lua/plenary.nvim',
        'kyazdani42/nvim-web-devicons',
    },
      config = function()
        require('gitsigns').setup{}
      end
    },

    -- CMDLine
    {
      "folke/noice.nvim",
      event = "VeryLazy",
      opts = {
        -- add any options here
      },
      dependencies = {
        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        "MunifTanjim/nui.nvim",
        -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
        --   If not available, we use `mini` as the fallback
        "rcarriga/nvim-notify",
        }
    },

    -- Treesitter
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

    -- LSP
    { 'neovim/nvim-lspconfig' },

    -- Mason
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },

    -- Autocomplete
    {
      'hrsh7th/nvim-cmp',
      -- load cmp on InsertEnter
      event = 'InsertEnter',
      -- these dependencies will only be loaded when cmp loads
      -- dependencies are always lazy-loaded unless specified otherwise
      dependencies = {
        'L3MON4D3/LuaSnip',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-buffer',
        'saadparwaiz1/cmp_luasnip',
      },
    },
  },
})
