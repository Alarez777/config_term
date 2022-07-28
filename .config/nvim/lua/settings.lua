--Neovim--
local cmd = vim.cmd
local exec= vim.api.nvim_exec
local fn = vim.fn
local g = vim.g
local opt = vim.opt
--General
g.mapleader = " "
opt.mouse = 'a'               -- enable mouse support
opt.clipboard = 'unnamedplus' -- copy/paste to system clipboard
opt.undofile = true
-- opt.swapfile = false          -- don't use swapfile
--UI
opt.number = true
opt.relativenumber = true
opt.showmatch = true          -- highlight matching parenthesis
opt.foldmethod = 'marker'     -- enable folding (default 'foldmarker')
opt.ignorecase = true         -- ignore case letters when search
opt.smartcase = true          -- ignore lowercase for the whole pattern
opt.linebreak = true          -- wrap on word boundary
opt.termguicolors = true
opt.guifont = "JetBrainsMono Nerd Font"
g.neovide_cursor_vfx_mode = "railgun"
opt.list = true
opt.listchars = 'tab:▸ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»'
-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 4        -- shift 4 spaces when tab
opt.tabstop = 4           -- 1 tab == 4 spaces
opt.smartindent = true    -- autoindent new lines
-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true         -- enable background buffers
opt.history = 100         -- remember n lines in history
opt.lazyredraw = true     -- faster scrolling
opt.synmaxcol = 1000      -- max column for syntax highlight

