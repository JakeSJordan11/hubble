if require("jake.first_load")() then
  return
end
require("impatient").enable_profile()
require("jake.neovide")
require("jake.options")
require("jake.theme")
require("jake.icons")
require("jake.plugins")
require("jake.configuration")
require("jake.keymaps")
