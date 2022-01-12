require("nvim-tree").setup({
  update_cwd = true,
  update_focused_file = { enable = true, update_cwd = true, ignore_list = {} },
})

vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>NvimTreeToggle<cr>", { nowait = true, silent = true, noremap = true })
