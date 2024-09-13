return {
  'nvim-treesitter/nvim-treesitter-context',
  config = function()
    require('treesitter-context').setup {
      mode = 'cursor',
      max_lines = 20,
      multiline_threshold = 5,
      trim_scope = 'inner',
    }
    vim.keymap.set('n', '[c', function()
      require('treesitter-context').go_to_context(vim.v.count1)
    end, { desc = 'Jump to [c]ontext', silent = true })
  end,
}
