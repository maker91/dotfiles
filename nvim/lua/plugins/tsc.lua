return {
  {
    "dmmulroy/tsc.nvim",
    cmd = { "TSC" }, -- Lazy loads the plugin only when you call the command
    opts = {
      auto_open_qflist = true, -- Automatically opens quickfix list if errors exist
      auto_close_qflist = false,
      enable_progress_notifications = true, -- Shows a notification while checking
    },
    keys = {
      {
        "<leader>tc",
        "<cmd>TSC<cr>",
        desc = "Project TypeScript Check",
      },
    },
  },
}
