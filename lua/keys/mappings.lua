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

-- Insert Mode --
-- Map Esc to kk
keymap('i', 'kk', '<Esc>', opts)

-- Normal Mode --
-- Reload configuration without restart nvim
keymap('n', '<leader>l', ':Lazy<CR>', opts)
keymap('n', '<leader>r', ':so %<CR>', opts)

-- Fast saving with <leader> and s
keymap('n', '<leader>s', ':w<CR>', opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Faster menu based buffer switching
keymap('n', '<leader>b', ':buffers<CR>:buffer<Space>', opts)
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

-- Code folding
keymap('n', '<leader>t', ':Telescope<CR>', opts)

-- Jump to the next/prev TODO comment
keymap("n", "<C-A-j>", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

keymap("n", "<C-A-k>", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })


-- Trouble plugin. Open Quickfix, etc. keymap("n", "<localleader>x", function() require("trouble").toggle() end)
--keymap("n", "<localleader>w", function() require("trouble").toggle("workspace_diagnostics") end)
--keymap("n", "<localleader>d", function() require("trouble").toggle("document_diagnostics") end)
--keymap("n", "<localleader>q", function() require("trouble").toggle("quickfix") end)
--keymap("n", "<localleader>l", function() require("trouble").toggle("loclist") end)
--keymap("n", "gR", function() require("trouble").toggle("lsp_references") end)



