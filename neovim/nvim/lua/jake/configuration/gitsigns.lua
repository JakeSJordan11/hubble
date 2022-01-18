require("gitsigns").setup({
  signs = {
    add = { hl = "GitGutterAdd", text = "+" },
    change = { hl = "GitGutterChange", text = "~" },
    delete = { hl = "GitGutterDelete", text = "_" },
    topdelete = { hl = "GitGutterDelete", text = "‾" },
    changedelete = { hl = "GitGutterChange", text = "~" },
  },
})

-- diagnostic symbols
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end


vim.api.nvim_set_keymap("n", "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<cr>", { nowait = true, silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>gs", "<cmd>Gitsigns toggle_signs<cr>", { nowait = true, silent = true, noremap = true })
