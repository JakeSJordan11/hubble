require("toggleterm").setup({
	hide_numbers = true,
	shell = "pwsh --noLogo",
	start_in_insert = true,
})

SetKeymap("n", "<leader>`", "<cmd>ToggleTerm<cr>")
SetKeymap("t", "<esc><esc>", "<c-\\><c-n>")
