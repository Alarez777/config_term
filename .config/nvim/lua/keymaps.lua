local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd

-- Neovim shortcuts
map('n', '<leader>w', ':w<CR>', default_opts)
map('n', '<leader>q', ':bd<CR>', default_opts)
map('n', '<leader>Q', ':q<CR>', default_opts)
map('n', '<Leader>;', '$a:<Esc>o', default_opts)       -- Agrega dos puntos al final de la linea

-- reload configuracion
map('n', '<leader>r', ':source % <CR>', default_opts)

-- nvim-tree
map('n', '<leader>t', ':Neotree toggle<CR>', default_opts)       -- open/close

-- movimiento entre buffer
map('n', '<leader>h', ':bprevious<CR>', default_opts)       -- mover entre buffer
map('n', '<leader>l', ':bnext<CR>', default_opts)       -- mover entre buffer

-- hop
map('', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
map('', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
map('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>", {})
map('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>", {})
map('n', '<leader>s', ':HopChar2<CR>', default_opts)       -- change char 2
map('n', '<leader>k', ':HopLine<CR>', default_opts)       -- change line

--fzf
map('n', '<Tab><Tab>', ':FzfLua files<CR>', default_opts)       -- fzf files

--Kite
map('n', '<Leader>g', ':KiteGotoDefinition<CR>', default_opts)       -- ir a defininicion con kite
map('n', '<Leader>gd', ':KiteDocsAtCursor<CR>', default_opts)       -- ir a documentacion

--tabulacion
map('v', '<Tab>', '>gv', default_opts)       -- mueve las lineas a la derecha
map('v', '<S-Tab>', '<gv', default_opts)       -- mueve las lineas a la izquierda
