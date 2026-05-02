-- Removing errors, will fix later
-- vim.g.loaded_node_provider = 0
-- vim.g.loaded_perl_provider = 0
-- vim.g.loaded_ruby_provider = 0
-- vim.treesitter.start = function() end

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
vim.keymap.set({"n"},"<leader>ca",vim.lsp.buf.code_action,{silent = true})
-- Auto close neotree on quit
vim.api.nvim_create_autocmd("QuitPre", {
  callback = function() vim.cmd("Neotree close") end,
})

-- Load lazy
require("config.lazy")
