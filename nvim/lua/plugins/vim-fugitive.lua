-- Git integration

return {
  "tpope/vim-fugitive",
  config = function()
    vim.cmd('set diffopt+=vertical')
  end
}
