return {
  'Wansmer/langmapper.nvim',
  lazy = false,
  priority = 1, -- High priority is needed if you will use `autoremap()`
  config = function()
    require('langmapper').setup {--[[ your config ]]
    }
  end,
}

--
-- return {
--   'Wansmer/langmapper.nvim',
--   lazy = false,
--   priority = 1,
--   config = function()
--     local langmapper = require 'langmapper'
--
--     -- Define the layouts explicitly
--     local layouts = {
--       -- Define the mapping between your layouts
--       -- This is an example - adjust according to your actual layout
--       ['й'] = 'q',
--       ['ц'] = 'w',
--       -- ... add all your mappings
--     }
--
--     langmapper.setup {
--       hack_keymap = true,
--       layout = layouts,
--     }
--
--     -- Map special keys after setup
--     local function setup_keymaps()
--       -- Try using raw vim API with explicit layout handling
--       for _, mapping in ipairs {
--         { 'n', '<A-k>', '<cmd>m .-2<cr>==', 'Move Up' },
--         { 'v', '<A-j>', ":m '>+1<cr>gv=gv", 'Move Down' },
--         { 'v', '<A-k>', ":m '<-2<cr>gv=gv", 'Move Up' },
--         { 'n', '<A-j>', '<cmd>m .+1<cr>==', 'Move Down' },
--         { 'n', '<A-Down>', '<cmd>m .+1<cr>==', 'Move Down' },
--         { 'n', '<A-Up>', '<cmd>m .-2<cr>==', 'Move Up' },
--         { 'v', '<A-Down>', ":m '>+1<cr>gv=gv", 'Move Down' },
--         { 'v', '<A-Up>', ":m '<-2<cr>gv=gv", 'Move Up' },
--       } do
--         local mode, lhs, rhs, desc = unpack(mapping)
--         vim.keymap.set(mode, lhs, rhs, { desc = desc, silent = true })
--       end
--     end
--
--     -- Set up the keymaps after a short delay to ensure langmapper is fully initialized
--     vim.defer_fn(setup_keymaps, 100)
--
--     langmapper.automapping { buffer = false }
--   end,
-- }
