
return {
    "mg979/vim-visual-multi",
    branch = "master", -- Explicitly specify the branch
    config = function()
        -- Optional: You can add custom settings here, if any.
        -- Example: Set specific options
        vim.g.VM_default_mappings = true  -- Enable default key mappings
        vim.g.VM_mouse_mappings = true    -- Enable mouse support for selections
    end,
    event = "VeryLazy", -- Lazy load the plugin on a relevant event
}



-- Basic usage:
--
-- select words with Ctrl-N (like Ctrl-d in Sublime Text/VS Code)
-- create cursors vertically with Ctrl-Down/Ctrl-Up
-- select one character at a time with Shift-Arrows
-- press n/N to get next/previous occurrence
-- press [/] to select next/previous cursor
-- press q to skip current and get next occurrence
-- press Q to remove current cursor/selection
-- start insert mode with i,a,I,A
