local nvim_lsp = require("lspconfig")

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(bufnr)
  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end
  local function buf_set_option(...)
    vim.api.nvim_buf_set_option(bufnr, ...)
  end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
  buf_set_option("formatexpr", "v:lua.vim.lsp.formatexpr()")

  -- Mappings.
  local opts = { noremap = true, silent = true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
  buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
  buf_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  -- buf_set_keymap("n", "K", "<cmd>Lspsaga hover_doc<cr>", opts)
  buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  -- buf_set_keymap("n", "<C-k>", "<cmd>Lspsaga signature_help<cr>", opts)
  buf_set_keymap("n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>", opts)
  buf_set_keymap("n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>", opts)
  buf_set_keymap("n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>", opts)
  buf_set_keymap("n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
  buf_set_keymap("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  -- buf_set_keymap('n', '<space>rn', '<cmd>Lspsaga rename<cr>', opts)
  buf_set_keymap("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
  buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<cr>', opts)
  -- buf_set_keymap("n", "<space>e", "<cmd>Lspsaga show_line_diagnostics<cr>", opts)
  buf_set_keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<cr>", opts)
  buf_set_keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<cr>", opts)
  buf_set_keymap("n", "<space>q", "<cmd>lua vim.diagnostic.setloclist()<cr>", opts)
  buf_set_keymap("n", "<space>m", "<cmd>lua vim.lsp.buf.formatting()<cr>", opts)

  vim.cmd([[ command! Format execute 'lua vim.lsp.buf.formatting()']])
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = {
  "cssls",
  -- "denols",
  "eslint",
  -- "graphql",
  "rust_analyzer",
  -- "stylelint_lsp",
  -- "tailwindcss",
  "tsserver",
}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup({
    on_attach = on_attach,
    capabilities = capabilities,
    flags = { debounce_text_changes = 150 },
  })
end

require("lspconfig").sumneko_lua.setup({
  -- on_attach = on_attach,
  -- capabilities = capabilities,
  settings = {
    Lua = { diagnostics = { globals = { "vim" } }, telemetry = { enable = false } },
  },
})

local luadev = require("lua-dev").setup({
  -- add any options here, or leave empty to use the default settings
  lspconfig = {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
      Lua = {
        diagnostics = { globals = { "vim" } },
        telemetry = { enable = false },
      },
      --   cmd = {"lua-language-server"}
    },
  },
})

nvim_lsp.sumneko_lua.setup(luadev)
