return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  tag = "v0.9.3",
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter').setup({
      install_dir = vim.fn.stdpath('data') .. '/site',
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = { 'rust', 'javascript' },
    })
  end,
}
