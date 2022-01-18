require("gitsigns").setup({
  signs = {
    add = { hl = "GitGutterAdd", text = "" },
    change = { hl = "GitGutterChange", text = "" },
    delete = { hl = "GitGutterDelete", text = "" },
    topdelete = { hl = "GitGutterDelete", text = "" },
    changedelete = { hl = "GitGutterChange", text = "" },
  },
  signcolumn = false, -- Toggle with `:Gitsigns toggle_signs`
  numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
  watch_gitdir = {
    interval = 1000,
    follow_files = true,
  },
  attach_to_untracked = true,
  current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
    delay = 1000,
    ignore_whitespace = false,
  },
  current_line_blame_formatter_opts = {
    relative_time = false,
  },
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  max_file_length = 40000,
  preview_config = {
    -- Options passed to nvim_open_win
    border = "rounded",
    style = "minimal",
    relative = "cursor",
    row = 0,
    col = 1,
  },
  yadm = {
    enable = false,
  },
})

-- diagnostic symbols
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end


vim.api.nvim_set_keymap("n", "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<cr>", { nowait = true, silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>gs", "<cmd>Gitsigns toggle_signs<cr>", { nowait = true, silent = true, noremap = true })
