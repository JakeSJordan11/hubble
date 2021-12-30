require("toggleterm").setup({
	hide_numbers = true,
	shell = "pwsh --noLogo",
	start_in_insert = true,
})

vim.api.nvim_set_keymap("n", "<leader>`", "<cmd>ToggleTerm<cr>", { nowait = true, silent = true, noremap = true })
vim.api.nvim_set_keymap("t", "<esc><esc>", "<c-\\><c-n>", { nowait = true, silent = true, noremap = true })
