-- source current file
-- vim.keymap.set('n', '<space><space>x', '<cmd>source %<CR>')
--.lua - refers to the current line in the buffer
vim.keymap.set('n', '<space>x', ':.lua<CR>')
-- execute selected lines
vim.keymap.set('v', '<space>x', ':lua<CR>')


-- ctrl + s = save
vim.keymap.set('n', '<C-s>', ':w<Return>')
-- remove highlight after search
--
vim.keymap.set('n', '<esc>', '<cmd>nohlsearch<cr>')

--Tabs
vim.keymap.set('n', '<A-h>', ':bprevious<CR>')
vim.keymap.set('n', '<A-l>', ':bnext<CR>')
vim.keymap.set('n', '<A-Left>', ':bprevious<CR>')
vim.keymap.set('n', '<A-Right>', ':bnext<CR>')
-- Close current buffer
vim.api.nvim_set_keymap('n', '<C-w>', ':bd<CR>', { noremap = true, silent = true })

--Alternate files
vim.keymap.set('n', '<Tab>', ':b#<CR>', {desc = 'Switch to alternate file'})

--Rename a symbol
vim.keymap.set('n', '<F1>', vim.lsp.buf.rename, { noremap = true, silent = true, desc = 'Rename a symbol' })

-- Jump to matching pairs with 'm'
vim.keymap.set('n', 'm', '%', { noremap = true, silent = true, desc = 'Jump to matching pair' })
vim.keymap.set('v', 'm', '%', { noremap = true, silent = true, desc = 'Jump to matching pair' })

--Commenting
vim.api.nvim_set_keymap('n', '<C-c>', 'gcc', { noremap = false, silent = true })
vim.api.nvim_set_keymap('v', '<C-c>', 'gc<Esc>', { noremap = false, silent = true })

--Visual selection
vim.api.nvim_set_keymap('v', 'V', 'j', { noremap = true, silent = true })
-- Undo
vim.keymap.set('n', 'U', ':redo<CR>', { noremap = true, silent = true })
-- Show info under cursor
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { noremap = true, silent = true, desc = 'Show LSP hover documentation' })

-- Move lines
vim.keymap.set('n', '<A-k>', '<cmd>m .-2<cr>==', { desc = 'Move Up' })
vim.keymap.set('v', '<A-j>', ":m '>+1<cr>gv=gv", { desc = 'Move Down' })
vim.keymap.set('v', '<A-k>', ":m '<-2<cr>gv=gv", { desc = 'Move Up' })
vim.keymap.set('n', '<A-j>', '<cmd>m .+1<cr>==', { desc = 'Move Down' })
vim.keymap.set('n', '<A-Down>', '<cmd>m .+1<cr>==', { desc = 'Move Down' })
vim.keymap.set('n', '<A-Up>', '<cmd>m .-2<cr>==', { desc = 'Move Up' })
vim.keymap.set('v', '<A-Down>', ":m '>+1<cr>gv=gv", { desc = 'Move Down' })
vim.keymap.set('v', '<A-Up>', ":m '<-2<cr>gv=gv", { desc = 'Move Up' })

-- Disabling joining Lines and something else
vim.keymap.set('n', 'J', '<nop>', { desc = 'Disable Shift + J' })
-- vim.keymap.set('n', 'K', '<nop>', { desc = 'Disable Shift + K' })

-- Indent and keep selection
vim.keymap.set('v', '>', '>gv', { desc = 'Indent and keep selection' })
vim.keymap.set('v', '<', '<gv', { desc = 'Outdent and keep selection' })

-- No op
vim.keymap.set('n', '<C-e>', '<Nop>')


-- inspect highlighting. :Inspect! - for now, fix :Inspect - later
vim.api.nvim_set_keymap("n", "<leader>i", ":Inspect!<CR>", { noremap = true, silent = true, desc = "Inspect token" })


