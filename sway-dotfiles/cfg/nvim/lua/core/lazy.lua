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
  --------
  -- UI :
  --------
  {"kyazdani42/nvim-web-devicons", lazy = true },
  {"catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {"nvim-lualine/lualine.nvim"},
  {"lukas-reineke/indent-blankline.nvim" },
  {"goolord/alpha-nvim"},
  -------------------
  -- Auto Compelete:
  -------------------
  {"nvim-treesitter/nvim-treesitter", build = ':TSUpdate' },
  {"neovim/nvim-lspconfig"},
  {"williamboman/mason.nvim"},
  {"williamboman/mason-lspconfig.nvim"},
  {"hrsh7th/nvim-cmp",
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
  --------------
  -- Functions:
  -------------
  {"kyazdani42/nvim-tree.lua",
    config = function()
        require('nvim-tree').setup()
    end
  },
  {"windwp/nvim-autopairs",
    event = 'InsertEnter',
    config = function()
      require('nvim-autopairs').setup{}
    end
  },
  {"numToStr/Comment.nvim",
    config = function()
        require('Comment').setup()
    end
  },
  {"kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup()
    end
  },
  {"brenoprata10/nvim-highlight-colors",
    config = function()
        require("nvim-highlight-colors").setup()
    end
  },
})
