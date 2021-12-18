local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = 'lazygit', hidden = true })

function _G._lazygit_toggle()
  lazygit:toggle()
end
