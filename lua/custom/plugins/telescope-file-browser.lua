return {
  'nvim-telescope/telescope-file-browser.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  config = function()
    require('telescope').setup {
      extensions = {
        file_browser = {
          theme = 'ivy',
          -- sorting_strategy = 'ascending',
          -- layout_config = {
          --   horizontal = {
          --     prompt_position = 'top',
          --     preview_width = 0.3,
          --   },
          -- },
          -- theme = 'ivy',
          -- disables netrw and use telescope-file-browser in its place
          -- hijack_netrw = true,
          -- mappings = {
          --   ['i'] = {
          --     -- your custom insert mode mappings
          --   },
          --   ['n'] = {
          --     -- your custom normal mode mappings
          --   },
          -- },
        },
      },
    }
    require('telescope').load_extension 'file_browser'
    local fb = require('telescope').extensions.file_browser
    vim.keymap.set('n', '<leader>f', function()
      fb.file_browser { auto_depth = true }
    end, { desc = '[F]iletree' })
  end,
}
