vim.api.nvim_set_var("bufferline", {
  animation = true,
  auto_hide = true,
  tabpages = true,
  closable = true,
  clickable = true,
  -- exclude_ft = {'javascript'},
  -- exclude_name = {'package.json'},
  icons = true,
  icon_custom_colors = false,
  icon_separator_active = "▎",
  icon_separator_inactive = "▎",
  icon_close_tab = "",
  icon_close_tab_modified = "●",
  icon_pinned = "車",

  insert_at_end = false,
  insert_at_start = false,
  maximum_padding = 1,
  maximum_length = 30,
  semantic_letters = true,
  letters = "asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP",
  no_name_title = nil,
})
vim.api.nvim_set_keymap("n", "<tab>", "<cmd>BufferNext<cr>", { nowait = true, silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<s-tab>", "<cmd>BufferPrevious<cr>", { nowait = true, silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>bc", "<cmd>BufferClose<cr>", { nowait = true, silent = true, noremap = true })
vim.api.nvim_set_keymap(
  "n",
  "<Leader>bac",
  "<cmd>BufferCloseAllButCurrent<cr>",
  { nowait = true, silent = true, noremap = true }
)
