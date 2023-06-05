-- NerdTree

return {
  "preservim/nerdtree",
  config = function()
    vim.api.nvim_set_keymap('n', '<leader>no', ':NERDTreeToggle<CR>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<leader>nf', ':NERDTreeFind<CR>', { noremap = true })
  end
}
