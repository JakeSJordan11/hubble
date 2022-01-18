local null_ls = require "null-ls"
-- register any number of sources simultaneously
local sources = {
  -- null_ls.builtins.formatting.lua_format,
  null_ls.builtins.formatting.stylua,
}

null_ls.setup { sources = sources }
vim.cmd "highlight DiagnosticVirtualTextError guibg=none"
vim.cmd "highlight DiagnosticVirtualTextHint guibg=none"
vim.cmd "highlight DiagnosticVirtualTextInfo guibg=none"
vim.cmd "highlight DiagnosticVirtualTextWarn guibg=none"
