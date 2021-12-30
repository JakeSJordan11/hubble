-- Windows helpers--
vim.api.nvim_set_keymap("n", "<c-z>", "", { nowait = true, silent = true, noremap = true })
vim.api.nvim_set_keymap("i", "<c-s>", "<c-o><cmd>w<cr>", { nowait = true, silent = true, noremap = false })
vim.api.nvim_set_keymap("n", "<c-s>", "<cmd>w<cr>", { nowait = true, silent = true, noremap = false })

-- Text movement--
vim.api.nvim_set_keymap("n", "<a-down>", "<cmd>move +1<cr>", { nowait = true, silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<a-j>", "<cmd>move +1<cr>", { nowait = true, silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<as-j>", "yyp", { nowait = true, silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<a-up>", "<cmd>move -2<cr>", { nowait = true, silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<a-k>", "<cmd>move -2<cr>", { nowait = true, silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<as-k>", "yyP", { nowait = true, silent = true, noremap = true })

-- Windows movement--
vim.api.nvim_set_keymap("n", "<leader>w", "<c-w>", { nowait = true, silent = true, noremap = true })

-- Highlight on yank
vim.cmd([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]])
