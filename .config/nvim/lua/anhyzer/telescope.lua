require('telescope').setup({
    defaults = {
        path_display = function(opts, path)
          local tail = require("telescope.utils").path_tail(path)
          return string.format("%s (%s)", tail, path)
        end,
    }
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
