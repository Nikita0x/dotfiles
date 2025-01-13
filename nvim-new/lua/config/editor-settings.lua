vim.opt.number = true
vim.opt.title = true
vim.opt.scrolloff = 10
vim.opt.shiftwidth = 4
vim.opt.relativenumber = false

--Highlight on yanking - not needed with lazyvim
-- vim.api.nvim_create_autocmd("TextYankPost", {
-- 	desc = "Highlight when yanking (copying) text",
-- 	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
-- 	callback = function()
-- 		vim.highlight.on_yank()
-- 	end,
-- })
