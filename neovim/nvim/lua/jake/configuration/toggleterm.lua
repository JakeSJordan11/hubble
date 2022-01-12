require("toggleterm").setup({
  -- open_mapping = [[<leader>`]],
  -- on_open = fun(t: Terminal), -- function to run when the terminal opens
  -- on_close = fun(t: Terminal), -- function to run when the terminal closes
  hide_numbers = true,
  shell = "pwsh --noLogo",
  start_in_insert = true,
  direction = "float";
  float_opts = {
    border = "curved",
    height = vim.o.lines - 8,
    width = vim.o.columns - 8,
    winblend = 3,
    highlights = {
      border = "Normal",
      background = "Normal",
    }
  }
})

vim.api.nvim_set_keymap("n", "<leader>`", "<cmd>ToggleTerm<cr>", { nowait = true, silent = true, noremap = true })
vim.api.nvim_set_keymap("t", "<esc><esc>", "<c-\\><c-n>", { nowait = true, silent = true, noremap = true })
