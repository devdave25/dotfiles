-- use syntax highlighting
vim.cmd('syntax on')

-- vim autodetects file type
vim.cmd('filetype plugin indent on')

-- set spell check language
vim.opt.spelllang = 'en_gb'

-- tab controls
-- (more info at https://tedlogan.com/techblog3.html)
vim.opt.expandtab = true       -- change tab key to insert spaces
vim.opt.tabstop = 2            -- existing tabs look like 2 spaces
vim.opt.shiftwidth = 2         -- >> indent 2 spaces
vim.opt.softtabstop = 2        -- with expand tab not set combination of spaces will be used

-- misc
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.ignorecase = true

-- Theme

-- Colour Settings
vim.cmd('colorscheme onedark')

if vim.fn.has('termguicolors') == 1 then
  vim.opt.termguicolors = true
end

-- Visual Settings
-- For LimeLight
-- Color name (:help cterm-colors) or ANSI code
vim.g.limelight_conceal_ctermfg = 'gray'
vim.g.limelight_conceal_ctermfg = 240
-- Color name (:help gui-colors) or RGB color
vim.g.limelight_conceal_guifg = 'DarkGray'
vim.g.limelight_conceal_guifg = '#777777'
-- highlight line
vim.g.limelight_bop = '^.*$'
-- vim.g.limelight_eop = '\n'
vim.g.limelight_paragraph_span = 0
