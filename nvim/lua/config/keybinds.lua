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
vim.keymap.set('n', '<Left>', ':bprevious<CR>')
vim.keymap.set('n', '<Right>', ':bnext<CR>')
-- Close current buffer
vim.api.nvim_set_keymap('n', '<C-w>', ':bd<CR>', { noremap = true, silent = true })

--Alternate files
vim.keymap.set('n', '<Tab>', ':b#<CR>', { desc = 'Switch to alternate file' })

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
-- Show info under cursor (now <leader>k - akin to helix)
-- vim.keymap.set('n', '<C-r>', vim.lsp.buf.hover, { noremap = true, silent = true, desc = 'Show LSP hover documentation' })
-- When in INSERT mode, <C-s> - save a file AND exit to NORMAL mode
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>', { noremap = true, silent = true, desc = 'Save file and exit insert mode' })

-- When in NORMAL mode, x - will just delete without overriding clipboard
vim.keymap.set('n', 'x', '"_x', { noremap = true, silent = true, desc = 'Delete without overriding clipboard' })

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
-- vim.keymap.set('n', '<C-e>', '<Nop>')

-- inspect highlighting. :Inspect! - for now, fix :Inspect - later
vim.api.nvim_set_keymap('n', '<leader>i', ':Inspect!<CR>', { noremap = true, silent = true, desc = 'Inspect token' })

-- Remap Ctrl+D and Ctrl+U to arrow down and up (jump half page)
vim.keymap.set('n', '<Down>', '<C-d>', { noremap = true, silent = true })
vim.keymap.set('n', '<Up>', '<C-u>', { noremap = true, silent = true })

-- Remap Ctrl+Down and Ctrl+Up to jump a full page down/up
vim.keymap.set('n', '<C-Down>', '<C-f>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Up>', '<C-b>', { noremap = true, silent = true })

-- Jump to the beginning of the line
vim.api.nvim_set_keymap('n', '<A-q>', '0', { noremap = true, silent = true })

-- Jump to the end of the line
vim.api.nvim_set_keymap('n', '<A-e>', '$', { noremap = true, silent = true })

-- Jump to the middle of the line (approximately)
vim.api.nvim_set_keymap('n', '<A-w>', ':call cursor(0, len(getline(".")) / 2)<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'd', '"_d', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'dd', '"_dd', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'd', '"_d', { noremap = true, silent = true })

-- Remap vv to select the current line (like Shift + V)
vim.api.nvim_set_keymap('n', 'vv', 'V', { noremap = true, silent = true })

--tab mode test
-- vim.keymap.set('i', '<Tab>', function()
--   local line = vim.api.nvim_get_current_line()
--   local col = vim.api.nvim_win_get_cursor(0)[2] -- Get cursor column (0-based)
--   local next_char = line:sub(col + 2, col + 2) -- Get the next character after the cursor
--
--   -- If the next character is a comma, move the cursor past it
--   if next_char == ',' then
--     return '<Right><Right>'
--   else
--     return '<Tab>' -- Default tab behavior
--   end
-- end, { expr = true, noremap = true })
