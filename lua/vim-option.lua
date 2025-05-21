vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"


vim.g.mapleader = " "
vim.opt.swapfile = false

--split/delete panes 
vim.keymap.set('n', '<leader>sh', ':split<CR>')   -- horizontal split
vim.keymap.set('n', '<leader>sv', ':vsplit<CR>')  -- vertical split
vim.keymap.set('n', '<leader>q', ':close<CR>')


-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true

