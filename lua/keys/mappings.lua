local opts = { noremap = true, silent = true }
local expr_opts = { expr = true, silent = true }

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

-- Insert Mode --
-- Map Esc to kk
keymap('i', 'kk', '<Esc>', opts)

-- Normal Mode --

-- Better Up & down
--keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Reload configuration without restart nvim
keymap("n", "<leader>l", ":Lazy<CR>", opts)
keymap("n", "<leader>r", ":so %<CR>", opts)

-- Fast saving with <leader> and s
keymap("n", "<leader>s", ":w<CR>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Faster menu based buffer switching
--keymap('n', '<leader>b', ':buffers<CR>:buffer<Space>', opts)
keymap('n', '<leader>n', ':buffer #<CR>', opts)

-- Neotree Toggle
keymap('n', '<leader>f', ':Neotree toggle<CR>', opts)

-- Clear search highlighting with <leader> and c
keymap('n', '<leader>.', ':nohl<CR>', opts)

-- JUMP shortcuts
-- Move up/down the buffer, jumping to functions/classes
keymap('n', '<localleader>j', ':normal ]m<CR>', opts)
keymap('n', '<localleader>k', ':normal [m<CR>', opts)
-- Jump to the last edit/modification in the buffer
keymap('n', '<leader>m', '`.', opts)
-- JUMP shortcuts end

-- Code folding
keymap('n', '<leader>z', 'za', opts)

-- Telescope Toggle
keymap('n', '<leader>t', ':Telescope<CR>', opts)
keymap('n', '<leader>b', ':Telescope buffers<CR>', opts)
keymap('n', '<leader>tf', ':Telescope current_buffer_fuzzy_find<CR>', opts)
keymap('n', '<leader>ff', ':Telescope find_files<CR>', opts)
keymap('n', '<leader>g', ':Telescope live_grep<CR>', opts)
keymap('n', '<leader>ld', ':Telescope lsp_definitions<CR>', opts)
keymap('n', '<leader>lr', ':Telescope lsp_references<CR>', opts)
keymap('n', '<leader>li', ':Telescope lsp_implementations<CR>', opts)
keymap('n', '<leader>ls', ':Telescope lsp_document_symbols<CR>', opts)
keymap('n', '<leader>lt', ':Telescope treesitter<CR>', opts)

-- Trouble Toggle
keymap('n', '<leader>d', ':TroubleToggle<CR>', opts)

-- Jump to the next/prev TODO comment
keymap("n", "<C-A-j>", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

keymap("n", "<C-A-k>", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })
