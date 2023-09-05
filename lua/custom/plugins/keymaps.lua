return {

vim.keymap.set("n", "<leader>ha", require('harpoon.mark').add_file),
vim.keymap.set("n", "<leader>hv", require('harpoon.ui').toggle_quick_menu),

vim.keymap.set("n", "1", function() require('harpoon.ui').nav_file(1) end),
vim.keymap.set("n", "2", function() require('harpoon.ui').nav_file(2) end),
vim.keymap.set("n", "3", function() require('harpoon.ui').nav_file(3) end),
vim.keymap.set("n", "4", function() require('harpoon.ui').nav_file(4) end),
vim.keymap.set('n', '<C-f>', "<cmd>Neotree toggle<cr>"),

}
