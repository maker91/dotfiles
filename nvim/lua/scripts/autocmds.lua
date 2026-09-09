require "nvchad.autocmds"

-- Auto-enable inlay hints for any LSP that supports them
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client:supports_method("textDocument/inlayHint") then
      vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
      -- Add mapping to toggle inlay hints
      vim.keymap.set("n", "th", function() 
        vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
      end)
    end
  end,
})

-- Add line numbers to Telescope file previews
vim.api.nvim_create_autocmd('User', {
  pattern = 'TelescopePreviewerLoaded',
  callback = function(args)
    if args.data.filetype ~= 'help' then vim.wo.number = true end
  end,
})
