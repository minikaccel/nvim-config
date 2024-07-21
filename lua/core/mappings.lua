vim.g.mapleader = " "


vim.keymap.set("n", "<leader>e", ":Neotree focus<CR>")  
vim.keymap.set("n", "<leader>o", ":Neotree git_stasus<CR>")  

vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')
vim.keymap.set('n', '<leader>X', ':BufferLineCloseRight<CR>')
vim.keymap.set('n', '<leader>s', ':BufferLineSortByTabs<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
