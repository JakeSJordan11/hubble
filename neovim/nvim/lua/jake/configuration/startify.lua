vim.api.nvim_exec(
  "let startify_bookmarks = [{'n': '~/hubble/neovim/nvim/init.lua'}, {'d': '~/Development'}, {'h': '~/hubble'}]",
  true
)

vim.api.nvim_exec(
  "let startify_lists = [ { 'type': 'sessions', 'header': ['  Sessions'] }, { 'type': 'bookmarks', 'header': ['  Bookmarks'] }, { 'type': 'files', 'header': ['  Recent Files'] }, { 'type': 'dir', 'header': ['  Recent Files in '. getcwd()] }, { 'type': 'commands',  'header': ['   Commands'] } ]",
  true
)

vim.g.startify_custom_header = {
  "    ooooooooooooooooooooooooooooooooooooo",
  "    8                                .d88',",
  "    8   oooooooooooooooooooooooooooo 8888',",
  "    8  8888888888888888888888888P\"   8888',",
  "    8  8888888888888888888888P\"      8888',",
  "    8  8888888888888888888P\"         8888',",
  "    8  8888888888888888P\"            8888',",
  "    8  8888888888888P\"               8888',",
  "    8  8888888888P\"                  8888',",
  "    8  8888888P\"                     8888',",
  "    8  8888P\"                        8888',",
  "    8 d8888888888888888888888888888888888',",
  "    8 88888888888888888888888888888888888/",
  "           8ooooooooooooooocgmm8888\\'",
  "       ooooooooooooooooooooooooooooooo,",
  "      d                       ...oood8b',",
  "     d              ...oood888888888888b',",
  "    d     ...oood88888888888888888888888b',",
  "   dood8888888888888888888888888888888888b'",
}

vim.api.nvim_set_var("startify_files_number", 5)
vim.api.nvim_set_var("startify_padding_left", 3)
vim.api.nvim_set_var("webdevicons_enable_startify", 1)
vim.api.nvim_set_var("startify_session_delete_buffers", 1)
vim.api.nvim_set_var("startify_session_sort", 1)
vim.api.nvim_set_var("startify_update_oldfiles", 1)
vim.api.nvim_set_var("startify_change_to_dir", 1)
vim.api.nvim_set_var("startify_fortune_use_unicode", 1)
vim.api.nvim_set_var("startify_session_dir", "~/hubble/nvim/sessions")

vim.api.nvim_set_keymap("n", "<leader>ss", "<cmd>SSave<cr>", { nowait = true, silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>sl", "<cmd>SLoad<cr>", { nowait = true, silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>sd", "<cmd>SDelete<cr>", { nowait = true, silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>sh", "<cmd>Startify<cr>", { nowait = true, silent = true, noremap = true })
