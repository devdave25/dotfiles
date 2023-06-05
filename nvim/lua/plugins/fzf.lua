-- Fuzzy find

-- if vim.fn.has('win32') == 1 then
--  use {'junegunn/fzf', run = function() vim.fn['fzf#install']() end }
-- end

return {
  "junegunn/fzf.vim",
  config = function()
    vim.o.rtp = vim.o.rtp .. ',~/.fzf'
    vim.g['FZF_DEFAULT_OPTS'] = '--bind ctrl-a:select-all'

    -- FZF Fuzzy find shortcut
    vim.api.nvim_set_keymap('n', '<leader>f', ':GFiles<CR>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<leader>b', ':Buffers<CR>', { noremap = true })
  end
}
