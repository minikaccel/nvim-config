local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', 'gr', builtin.lsp_references, {noremap=true, silent=true})
