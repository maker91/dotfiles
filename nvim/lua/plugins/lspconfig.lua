return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()

      -- TypeScript (vtsls)
      vim.lsp.config("vtsls", {
        settings = {
          typescript = {
            inlayHints = {
              parameterNames = { enabled = "all" },
              parameterTypes = { enabled = true },
              variableTypes = { enabled = true },
              propertyDeclarationTypes = { enabled = true },
              functionLikeReturnTypes = { enabled = true },
              enumMemberValues = { enabled = true },
            },
          },
          javascript = {
            inlayHints = {
              parameterNames = { enabled = "all" },
              parameterTypes = { enabled = true },
              variableTypes = { enabled = true },
              propertyDeclarationTypes = { enabled = true },
              functionLikeReturnTypes = { enabled = true },
              enumMemberValues = { enabled = true },
            },
          },
        },
      })

      -- Tailwind CSS: Override root directory so it fires on Vite/v4 projects
      vim.lsp.config("tailwindcss", {
        root_dir = function(fname)
          local util = require("lspconfig.util")
          return util.root_pattern("package.json", ".git", "vite.config.ts", "vite.config.js")(fname)
            or vim.fn.getcwd()
        end,
      })

      local servers = { "html", "cssls", "ty", "vtsls", "eslint", "tailwindcss" }
      vim.lsp.enable(servers)
    end,
  }
}
