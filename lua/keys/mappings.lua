local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.keymap.set

--map ; as localleader key
keymap("", ";", "<Nop>", opts)
vim.g.maplocalleader = ";"

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal Mode --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Faster menu based buffer switching
keymap('n', '<leader>b', ':buffers<CR>:buffer<Space>', opts)
keymap('n', '<leader>n', ':buffer #<CR>', opts)

-- Clear search highlighting with <leader> and c
keymap('n', '<leader>.', ':nohl<CR>', opts)
