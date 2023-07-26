-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------
local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

----------------------------
-- Change leader to a comma:
----------------------------
--vim.g.mapleader = ','

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------
-- Base mappings
map('n', '<leader>q', ':qa!<CR>')
map('n', '<leader>w', ':w!<CR>')
map('n', '<leader>c', ':nohl<CR>')
map('n', '<leader>r', ':so %<CR>')
map('i', 'kj', '<Esc>')
map('i', 'jk', '<Esc>')

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')
-----------------------------------------------------------
-- Applications and Plugins shortcuts:
-----------------------------------------------------------
-- Terminal mappings
map('n', '<leader>t', ':Term<CR>', { noremap = true })  -- open
map('t', '<Esc>', '<C-\\><C-n>')                    -- exit
