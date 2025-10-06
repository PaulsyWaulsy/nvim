return {
  "folke/snacks.nvim",
  opts = {
    scroll = { enabled = false },

    indent = {
      only_scope = true, -- only show indent guides of the scope
      only_current = true, -- only show indent guides in the current window
    },

    input = { enabled = false },
    explorer = { enabled = false },
    notifier = { enabled = false },
    terminal = { win = { keys = {} } },
  },
}
