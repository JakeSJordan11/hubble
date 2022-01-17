local null_ls = require("null-ls")
-- register any number of sources simultaneously
local sources = {
  -- null_ls.builtins.formatting.codespell,
  -- null_ls.builtins.formatting.deno_fmt,
  -- null_ls.builtins.formatting.eslint_d,
  -- null_ls.builtins.formatting.fixjson,
  -- null_ls.builtins.formatting.gofmt,
  -- null_ls.builtins.formatting.gofumpt,
  -- null_ls.builtins.formatting.goimports,
  -- null_ls.builtins.formatting.golines,
  -- null_ls.builtins.formatting.lua_format,
  -- null_ls.builtins.formatting.markdownlint,
  -- null_ls.builtins.formatting.nginx_beautifier,
  -- null_ls.builtins.formatting.prettier_d_slim,
  null_ls.builtins.formatting.prettierd,
  -- null_ls.builtins.formatting.prismaFmt,
  null_ls.builtins.formatting.rustfmt,
  null_ls.builtins.formatting.rustywind,
  -- null_ls.builtins.formatting.shellharden,
  -- null_ls.builtins.formatting.shfmt,
  -- null_ls.builtins.formatting.stylelint,
  -- null_ls.builtins.formatting.stylua,
  -- null_ls.builtins.formatting.swiftformat,
  -- null_ls.builtins.formatting.taplo,
  -- null_ls.builtins.formatting.trim_newlines,
  -- null_ls.builtins.formatting.trim_whitespace,
  -- null_ls.builtins.formatting.eslint,
  -- null_ls.builtins.formatting.prettier,
  null_ls.builtins.code_actions.eslint_d,
  -- null_ls.builtins.code_actions.gitsigns,
  -- null_ls.builtins.code_actions.gitrebase,
  -- null_ls.builtins.code_actions.refactoring,
  -- null_ls.builtins.code_actions.shellcheck,
  -- null_ls.builtins.code_actions.eslint,
  null_ls.builtins.completion.luasnip,
  -- null_ls.builtins.diagnostics.eslint,
  -- null_ls.builtins.diagnostics.eslint_d,
  -- null_ls.builtins.diagnostics.hadolint,
  -- null_ls.builtins.diagnostics.markdownlint,
  -- null_ls.builtins.diagnostics.shellcheck,
  -- null_ls.builtins.diagnostics.stylelint,
  -- null_ls.builtins.diagnostics.vale,
  -- null_ls.builtins.diagnostics.vint,
  -- null_ls.builtins.diagnostics.yamllint,
  -- null_ls.builtins.diagnostics.golangci_lint,
  -- null_ls.builtins.diagnostics.revive,
  -- null_ls.builtins.diagnostics.staticcheck,
  null_ls.builtins.diagnostics.tsc,
  null_ls.builtins.hover.dictionary,
  -- null_ls.builtins.diagnostics.luacheck,
  -- null_ls.builtins.diagnostics.selene,
  -- null_ls.builtins.diagnostics.codespell,
  -- null_ls.builtins.diagnostics.cspell,
  -- null_ls.builtins.diagnostics.misspell,
  -- null_ls.builtins.diagnostics.proselint,
  -- null_ls.builtins.diagnostics.write_good,
  -- null_ls.builtins.code_actions.proselint,
  -- null_ls.builtins.completion.spell,
}

null_ls.setup({ sources = sources })
vim.cmd'highlight DiagnosticVirtualTextError guibg=none'
vim.cmd'highlight DiagnosticVirtualTextHint guibg=none'
vim.cmd'highlight DiagnosticVirtualTextInfo guibg=none'
vim.cmd'highlight DiagnosticVirtualTextWarn guibg=none'
--[[ vim.api.nvim_command('highlight DiagnosticVirtualTextError guibg=none')
vim.api.nvim_command('highlight DiagnosticVirtualTextHint guibg=none')
vim.api.nvim_command('highlight DiagnosticVirtualTextInfo guibg=none')
vim.api.nvim_command('highlight DiagnosticVirtualTextWarn guibg=none')
--]]
