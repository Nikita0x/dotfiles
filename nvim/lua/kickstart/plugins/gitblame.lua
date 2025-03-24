return {
  -- :GitBlameToggle - toggles git blame on/off,
  'f-person/git-blame.nvim',
  -- load the plugin at startup
  event = 'VeryLazy',
  -- Because of the keys part, you will be lazy loading this plugin.
  -- The plugin wil only load once one of the keys is used.
  -- If you want to load the plugin at startup, add something like event = "VeryLazy",
  -- or lazy = false. One of both options will work.
  opts = {
    -- your configuration comes here
    -- for example
    enabled = false, -- if you want to enable the plugin
    message_template = ' <date> • <author> • <summary> • <<sha>>', -- template for the blame message, check the Message template section for more options
    date_format = '%r', -- template for the date, check Date format section for more options. %r - relative
    virtual_text_column = 1, -- virtual text start column, check Start virtual text at column section for more options
    max_commit_summary_length = 70,
  },
  keys = {
    { "<leader>gb", "<cmd>GitBlameToggle<CR>", desc = "Toggle Git Blame" }
  },
}
--TODO: add keymap to trigger gitblame
--add keybinds for
--:GitBlameCopyFileURL
--:GitBlameCopyCommitURL
--:GitBlameOpenCommitURL
