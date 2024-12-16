local builtin = require('telescope.builtin')
local neogit = require('neogit')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>/', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>bb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = 'Telescope previously open files' })
vim.keymap.set('n', '<leader>fd', builtin.lsp_definitions, { desc = 'Telescope lists LSP incoming calls for word under the cursor' })
-- vim.keymap.set('n', '<leader>fD', builtin.lsp_implementations, { desc = 'Telescope lists LSP outgoing calls for word under the cursor' })
vim.keymap.set('n', '<leader>ft', builtin.treesitter, { desc = 'Telescope lists Function names, variables, from Treesitter' })
vim.keymap.set('n', '<leader>ss', builtin.current_buffer_fuzzy_find, { desc = 'Live fuzzy search inside of the currently open buffer' })
vim.keymap.set("n", "<space>fb", function()
	require("telescope").extensions.file_browser.file_browser()
end)


vim.keymap.set('n', '<leader>gg', function() neogit.open({ kind = split }) end, { desc = 'Open Git' })


-- vim.keymap.set("n", "<Leader>tf", function()
--   require("telescope").extensions.frecency.frecency {}
-- end)
-- Use a specific workspace tag:
vim.keymap.set("n", "<Leader>pf", function()
  require("telescope").extensions.frecency.frecency {
    workspace = "CWD",
  }
end)
