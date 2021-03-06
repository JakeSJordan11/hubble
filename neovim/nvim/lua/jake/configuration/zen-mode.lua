require("zen-mode").setup {
  window = {
    backdrop = 0,
    width = 120,
    height = 1,
    options = {
      signcolumn = "no",
      colorcolumn = "0",
      number = false,
      relativenumber = false,
      cursorline = false,
      cursorcolumn = false,
      foldcolumn = "0",
      list = false,
    },
  },
  plugins = {
    options = { enabled = true, ruler = false, showcmd = false },
    twilight = { enabled = true },
    gitsigns = { enabled = false },
  },
}

vim.api.nvim_set_keymap("n", "<leader>z", "<cmd>ZenMode<cr>", { nowait = true, silent = true, noremap = true })
