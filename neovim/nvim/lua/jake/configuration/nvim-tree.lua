require("nvim-tree").setup({})

vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>NvimTreeToggle<cr>", { nowait = true, silent = true, noremap = true })
