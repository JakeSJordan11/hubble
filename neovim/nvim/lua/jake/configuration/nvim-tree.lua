require("nvim-tree").setup({
	open_on_setup = true,
	update_cwd = true,
	update_focused_file = { enable = true },
	view = { auto_resize = true },
})

SetKeymap("n", "<leader>t", "<cmd>NvimTreeToggle<cr>")
