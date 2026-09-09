local map = vim.keymap.set

-- Disable arrow keys in Normal Mode
map("n", "<Up>", "<nop>", { desc = "Disabled Up arrow" })
map("n", "<Down>", "<nop>", { desc = "Disabled Down arrow" })
map("n", "<Left>", "<nop>", { desc = "Disabled Left arrow" })
map("n", "<Right>", "<nop>", { desc = "Disabled Right arrow" })

map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

map({ "n", "x" }, "<leader>fm", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "general format file" })

-- tabufline
if require("nvconfig").ui.tabufline.enabled then
  map("n", "<leader>b", "<cmd>enew<CR>", { desc = "buffer new" })

  map("n", "<leader>x", function()
    require("nvchad.tabufline").close_buffer()
  end, { desc = "buffer close" })
end

-- Comment
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

-- nvimtree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })

-- telescope
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map(
  "n",
  "<leader>fa",
  "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
  { desc = "telescope find all files" }
)

-- whichkey
map("n", "<leader>wK", "<cmd>WhichKey <CR>", { desc = "whichkey all keymaps" })

map("n", "<leader>wk", function()
  vim.cmd("WhichKey " .. vim.fn.input "WhichKey: ")
end, { desc = "whichkey query lookup" })

-- Quick exit insert mode
map("i", "jk", "<ESC>")

-- Add newline
map("n", "<CR>", "o<ESC>")

-- Remap [b and ]b to tab switch
map("n", "[b", function() require("nvchad.tabufline").prev() end, { desc = "Previous Tab" })
map("n", "]b", function() require("nvchad.tabufline").next() end, { desc = "Next Tab" })

-- Telescope keymaps
map("n", "<leader>fs", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", { desc = "Find symbol in workspace" })
map("n", "<leader>s", "<cmd>Telescope lsp_document_symbols<cr>", { desc = "Find symbol in buffer" })
map("n", "<leader>fr", "<cmd>Telescope lsp_references<cr>", { desc = "Find references in workspace" })
map("n", "<leader>d", "<cmd>Telescope diagnostics<cr>", { desc = "Show diagnostics" })

-- Lsp conveniences
map("n", "td", function() vim.diagnostic.open_float() end, { desc = "Open floating diagnostic window" })

-- blame.nvim mappings
map("n", "<leader>gb", "<cmd>BlameToggle window<cr>", { desc = "Toggle git blame in window mode" })
