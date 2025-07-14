return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      size = function(term)
        if term.direction == 'horizontal' then
          return 15
        elseif term.direction == 'vertical' then
          return 60 -- Increase for wider vertical terminal
        else
          return 20
        end
      end,
      open_mapping = [[<c-\>]],
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = 'horizontal', -- can be 'vertical' | 'horizontal' | 'tab' | 'float'
      close_on_exit = true,
      shell = vim.o.shell,
    }

    -- Optional keymaps for convenience
    vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm<cr>', { desc = 'Toggle Terminal' })
    vim.keymap.set('n', '<leader>tf', '<cmd>ToggleTerm direction=float<cr>', { desc = 'Terminal (float)' })
    vim.keymap.set('n', '<leader>th', '<cmd>ToggleTerm direction=horizontal<cr>', { desc = 'Terminal (horizontal)' })
    vim.keymap.set('n', '<leader>tv', '<cmd>ToggleTerm direction=vertical<cr>', { desc = 'Terminal (vertical)' })
  end,
}
