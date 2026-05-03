-- Options
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")

vim.opt.number = true
vim.g.mapleader = " "

-- Keymaps
vim.keymap.set("n", "<leader>ff", function() require("telescope.builtin").find_files() end, {})
vim.keymap.set("n", "<leader>fg", function() require("telescope.builtin").live_grep() end, {})
vim.keymap.set("n", "<leader>cc", 'ggVG"+y', { silent = true })
vim.keymap.set("n", "<leader>re", 'ggVG=', { silent = true })
vim.keymap.set("v", "<leader>cs", '"+y', { silent = true })
vim.keymap.set("n", "<leader>e", ':Neotree reveal<CR>', { silent = true })
-- LSP Keymaps
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Go to references" })
vim.keymap.set("n", "<leader>gh", vim.lsp.buf.hover, { desc = "Hover docs" })
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
-- Toggle Terminal
vim.keymap.set("n", "<leader>te", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" })
vim.keymap.set("t", "<Esc><Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })
vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]], { desc = "Focus code above" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Focus terminal below" })
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "term://*",
  callback = function()
    vim.cmd("startinsert")
  end,
})
-- Auto close neotree on quit
vim.api.nvim_create_autocmd("QuitPre", {
  callback = function() vim.cmd("Neotree close") end,
})

-- Load lazy
require("config.lazy")
