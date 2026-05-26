local map = vim.keymap.set
local unmap = vim.keymap.del
local set = vim.opt
local defaults = { noremap = true, silent = true }
local loud_default = { noreamp = true, silent = false }

-- Map Leader to "\", but first unmap it
map("n", "\\", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = "\\"

-- Source Current File (for configs)
map('n', '<leader>src', ':so %<CR>', loud_defaults, { desc = 'Source Current File' })

-- Tab & Buffer mgmt
map("n", "<leader>b", ":buffers<CR>:buffer <Space>", { desc = 'List Buffers and Open Buffer cmd' })

-- Reminder: use gt & GT to move through tabs
map("n", "<leader>tn", ":tabnew <CR>", { desc = 'Open New Tab' })
map("n", "<leader>tm", ":tabmove <CR>", { desc = 'Rename/Move Tab' })
map("n", "<leader>tc", ":tabclose <CR>", { desc = 'Close Tab' })
map("n", "<leader>to", ":tabonly <CR>", { desc = 'Close all Tabs sans Current' })

-- Force a write
map("c", ":w!!", ":w !sudo tee > /dev/null %", { desc = 'Force Write' })

-- Open NvimTree
map("n", "<leader>t", "<cmd>:NvimTreeToggle <CR>", { noremap = false, silent = false }, { desc = 'Toggle NvimTree' })

-- Telescope Keybindings
-- -- Naming Schema:
-- -- -- f+letter = global 'picker' cmds
-- -- -- fg+letter = grep cmds
-- -- -- ff+letter = fuzzy_find cmds
--
-- -- General Telescope Keybindings
map('n', '<leader>fb', "<cmd>:Telescope buffers <CR>", loud_defaults, { desc = 'Show open buffers in picker' })
map('n', '<leader>fk', "<cmd>:Telescope keymaps <CR>", loud_defaults, { desc = 'Show all keymaps' })
map('n', '<leader>fq', "<cmd>:Telescope quickfix <CR>", loud_defaults, { desc = 'Show quickfix list' })
map('n', '<leader>fqh', "<cmd>:Telescope quickfixhistory <CR>", loud_defaults, { desc = 'Show quickfix list history' })
map('n', '<leader>fs', "<cmd>:Telescope search_history <CR>", loud_defaults, { desc = 'Show search history' })
map('n', '<leader>fm', "<cmd>:Telescope marks <CR>", loud_defaults, { desc = 'Show vim marks' })
map('n', '<leader>fr', "<cmd>:Telescope registers <CR>", loud_defaults, { desc = 'Show vim registers' })

-- -- Current Workdir Telescope Keybindings
map('n', '<leader>ff', "<cmd>:Telescope find_files <CR>", loud_defaults, { desc = 'Fuzzy Find files from CWD' })
map('n', '<leader>fg', "<cmd>:Telescope live_grep <CR>", loud_defaults, { desc = 'Grep across files from CWD' })
map('n', '<leader>fgs', "<cmd>:Telescope grep_string <CR>", loud_defaults, { desc = 'Grep selected string across files from CWD' })
map('n', '<leader>ft', "<cmd>:Telescope tags <CR>", loud_defaults, { desc = 'Show CWD tags' })
map('n', '<leader>fh', "<cmd>:Telescope help_tags <CR>", loud_defaults, { desc = 'Show available help tags' })

-- -- Current Buffer Telescope Keybindings
map('n', '<leader>d', "<cmd>:Telescope diagnostics<CR>", loud_defaults, { desc = 'Open Diagnostic Buffer in picker' })
map('n', '<leader>ffb', "<cmd>:Telescope current_buffer_fuzzy_find <CR>", loud_defaults, { desc = 'Fuzzy search in buffer' })
map('n', '<leader>fbt', "<cmd>:Telescope current_buffer_tags <CR>", loud_defaults, { desc = 'Show current buffer tags in picker' })
	--
-- VIEW lua/dbarbosa/configs/mason.lua for lsp keybinds
