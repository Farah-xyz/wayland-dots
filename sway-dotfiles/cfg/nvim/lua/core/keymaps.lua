--------------------------------------------------------------------
------------------------ My Keys -----------------------------------
--------------------------------------------------------------------
-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Shorten function name
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

------------------------
---      Base        ---
------------------------
-- Disable arrow keys
keymap('', '<up>', '<nop>', opts)
keymap('', '<down>', '<nop>', opts)
keymap('', '<left>', '<nop>', opts)
keymap('', '<right>', '<nop>', opts)

-- better Navigate buffers
keymap("n", "<Tab>", ":bnext<CR>", opts)
keymap("n", "<S-Tab>", ":bprevious<CR>", opts)

-- Better navigation window
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Move text up and down
keymap("v", "<J>", ":m .+1<CR>==", opts)
keymap("v", "<K>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- others
keymap("n", "<leader>q", ":q!<CR>", opts)
keymap("n", "<leader>s", ":w!<CR>", opts)

------------------------
---      Plugins     ---
------------------------
-- NvimTree
keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- Fuzzy Finder Fzf
keymap('n', '<leader>f', "<cmd>lua require'fzf-lua'.files({ cmd = 'fd --type f --exclude node_modules' })<CR>", opts)
