-- Declare the list of plugins.

return {
  "nvim-lualine/lualine.nvim",
  config = function ()
    require('lualine').setup();
  end
}
