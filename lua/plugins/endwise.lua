return{
  'RRethy/nvim-treesitter-endwise',
  dependencies = 'nvim-treesitter/nvim-treesitter',
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = 'ruby',
      endwise = { enable = true },
    }
  end,
}
