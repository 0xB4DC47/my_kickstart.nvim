-- lua/plugins/rose-pine.lua
return {
  'rose-pine/neovim',
  name = 'rose-pine',
  config = function()
    require('rose-pine').setup {
      styles = {
        italic = false,
      },
    }
    vim.cmd 'colorscheme rose-pine-moon'
  end,
}
