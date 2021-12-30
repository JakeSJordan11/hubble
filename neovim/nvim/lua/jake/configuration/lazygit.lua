-- local Terminal  = require('toggleterm.terminal').Terminal
-- local lazygit = Terminal:new({ cmd = 'lazygit', hidden = true })
--
-- function _G._lazygit_toggle()
--   lazygit:toggle()
-- end
local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

function Lazygit_toggle()
	lazygit:toggle()
end

vim.api.nvim_set_keymap(
	"n",
	"<leader>gg",
	"<cmd>lua Lazygit_toggle()<cr>",
	{ nowait = true, silent = true, noremap = true }
)
