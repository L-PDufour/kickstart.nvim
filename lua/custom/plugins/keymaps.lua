return {

vim.keymap.set("n", "<leader>ha", require('harpoon.mark').add_file),
vim.keymap.set("n", "<leader>hv", require('harpoon.ui').toggle_quick_menu),

vim.keymap.set("n", "<leader>1", function() require('harpoon.ui').nav_file(1) end),
vim.keymap.set("n", "<leader>2", function() require('harpoon.ui').nav_file(2) end),
vim.keymap.set("n", "<leader>3", function() require('harpoon.ui').nav_file(3) end),
vim.keymap.set("n", "<leader>4", function() require('harpoon.ui').nav_file(4) end),
vim.keymap.set('n', '<C-f>', "<cmd>Neotree toggle<cr>"),


vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost" }, {
  callback = function()
    if vim.bo.modified and not vim.bo.readonly and vim.fn.expand("%") ~= "" and vim.bo.buftype == "" then
      vim.api.nvim_command('silent update')
    end
  end,
})
}
