return {
  {
    "mrcjkb/rustaceanvim",
    version = "^9", -- Recommended version constraint
    config = function()
      vim.g.rustaceanvim = {
        server = {
          default_settings = {
            ["rust-analyzer"] = {
              check = {
                command = "clippy",
              },
            },
          },
        },
      }
    end,
    lazy = false,
  }
}
