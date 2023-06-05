-- Leader mappings
vim.g.mapleader = " "

-- map double leader (space) to command
vim.api.nvim_set_keymap('n', '<leader><leader>', ':', { noremap = true })

-- map leader + v to vertical split
vim.api.nvim_set_keymap('n', '<leader>v', ':vsp<CR>', { noremap = true })

-- yank and paste maps
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>Y', '"+y$', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>p', '"+p', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>r', 'diw"0P', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>Y', '"+y$', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>r', 'diw"0P', { noremap = true })

-- next in quickfix list
vim.api.nvim_set_keymap('n', '<leader>]', ':cn<CR>', { noremap = true })

-- previous in quickfix list
vim.api.nvim_set_keymap('n', '<leader>[', ':cp<CR>', { noremap = true })

-- Navigating windows
-- map window moves to leader
vim.api.nvim_set_keymap('n', '<leader>w', '<C-w>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>h', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>l', '<C-w>l', { noremap = true })

-- map half page moves to ctrl + direction
vim.api.nvim_set_keymap('n', '<C-j>', '<C-d>zz', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-u>zz', { noremap = true })

-- move visual selected text up and down lines
vim.api.nvim_set_keymap('v', 'J', ':m \'>+1<CR>gv=gv', { noremap = true })
vim.api.nvim_set_keymap('v', 'K', ':m \'<-2<CR>gv=gv', { noremap = true })

-- tab navigation
vim.api.nvim_set_keymap('n', '<leader>.', ':tabnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>,', ':tabprevious<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader><tab>', ':tabnew<CR>', { noremap = true })

-- Window vertical resizing
vim.api.nvim_set_keymap('n', '<leader>+', ':vertical resize +10<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>-', ':vertical resize -10<CR>', { noremap = true })

-- Buffer navigation
vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<CR>', { noremap = true })

-- Keyboard mappings
vim.api.nvim_set_keymap('n', 'J', 'mzJ`z', { noremap = true })

vim.api.nvim_set_keymap('n', 'Y', 'y$', { noremap = true })

-- Find and replace
vim.api.nvim_set_keymap('n', '<leader>2', ':set hlsearch! hlsearch?<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>/', '/\\<<C-r><C-w>\\><CR>', {})
vim.api.nvim_set_keymap('v', '//', 'y/<C-R>"<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>s', ':%s/\\<<C-r><C-w>\\>/', {})
vim.api.nvim_set_keymap('v', '/s', 'y:%s/<C-R>"/', {})


-- Open neovim terminal
vim.api.nvim_set_keymap('n', '<leader>t', ':terminal<CR>A', { noremap = true })
-- Map <Esc> to quitting the terminal
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true })

