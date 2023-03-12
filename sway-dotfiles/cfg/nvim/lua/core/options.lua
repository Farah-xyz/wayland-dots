------------------------------------------------------
---                   My Options                   ---
------------------------------------------------------
-- varible
local opt = vim.opt
local g = vim.g
local indent = 2

-- misc
opt.syntax = 'enable'
opt.encoding = 'utf-8'
opt.arabicshape = true
opt.termbidi = true
opt.clipboard = 'unnamedplus'
opt.hidden = true
opt.undofile = true
opt.backspace = { 'eol', 'start', 'indent' }
opt.matchpairs = { '(:)', '{:}', '[:]', '<:>' }

-- indention
opt.autoindent = true
opt.expandtab = true
opt.shiftwidth = indent
opt.smartindent = true
opt.softtabstop = indent
opt.tabstop = indent

-- search
opt.hlsearch = false
opt.ignorecase = true
opt.smartcase = true
opt.wildignore = opt.wildignore + { '*/node_modules/*', '*/.git/*', '*/vendor/*' }
opt.wildmenu = true

-- ui
opt.cursorline = true
opt.laststatus = 2
opt.lazyredraw = true
opt.list = true
opt.listchars:append "eol:↴"
opt.mouse = 'a'
opt.number = true
opt.rnu = true
opt.scrolloff = 18
opt.showmode = false
opt.sidescrolloff = 3
opt.signcolumn = 'yes'
opt.splitbelow = true
opt.splitright = true
opt.wrap = false

-- backups
opt.backup = false
opt.swapfile = false
opt.writebackup = false

-- autocomplete
opt.completeopt = { 'menu', 'menuone', 'noselect' }
opt.shortmess = opt.shortmess + { c = true }

-- perfomance
opt.redrawtime = 1500
opt.timeoutlen = 250
opt.ttimeoutlen = 10
opt.updatetime = 100

-- theme
opt.termguicolors = true

------------------------------------------------------
---               My Options For Plugins           ---
------------------------------------------------------
------ emmet Nvim -----------
g.user_emmet_mode='a'
g.user_emmet_leader_key=','
