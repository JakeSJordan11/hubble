local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
	local on_attach = function(_, bufnr)
		SetBufOption(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
		SetBufKeymap(bufnr, "n", "gD", "<cmd>Lspsaga lsp_finder<cr>")
		SetBufKeymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>")
		SetBufKeymap(bufnr, "n", "K", "<cmd>Lspsaga hover_doc<cr>")
		SetBufKeymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>")
		SetBufKeymap(bufnr, "n", "<C-k>", "<cmd>Lspsaga signature_help<cr>")
		SetBufKeymap(bufnr, "n", "<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>")
		SetBufKeymap(bufnr, "n", "<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>")
		SetBufKeymap(bufnr, "n", "<leader>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>")
		SetBufKeymap(bufnr, "n", "<leader>D", "<cmd>lua vim.lsp.buf.type_definition()<cr>")
		SetBufKeymap(bufnr, "n", "<leader>rn", "<cmd>Lspsaga rename<cr>")
		SetBufKeymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>")
		SetBufKeymap(bufnr, "n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")
		SetBufKeymap(bufnr, "n", "<leader>e", "<cmd>Lspsaga show_line_diagnostics<cr>")
		SetBufKeymap(bufnr, "n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<cr>")
		SetBufKeymap(bufnr, "n", "]d", "<cmd>lua vim.diagnostic.goto_next()<cr>")
		SetBufKeymap(bufnr, "n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<cr>")
		SetBufKeymap(bufnr, "n", "<leader>so", [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>]])
		SetBufOption(bufnr, "formatexpr", "v:lua.vim.lsp.formatexpr()")
		vim.cmd([[ command! Format execute 'lua vim.lsp.buf.formatting()']])
	end

	local capabilities = vim.lsp.protocol.make_client_capabilities()
	capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

	local opts = { on_attach = on_attach, capabilities = capabilities }

	if server.name == "efm" then
		opts.settings = require("lspconfig").efm.setup({
			init_options = { documentFormatting = true },
			settings = {
				rootMarkers = { ".git/" },
				languages = {
					lua = {
						{ formatCommand = "lua-format -i", formatStdin = true },
					},
				},
			},
		})
	end

	--[[ if server.name == "bash" then
      opts.settings = require('bashls').settings
    end

    if server.name == "cssls" then
      opts.settings = require('cssls').settings
    end

    if server.name == "eslint" then
        opts.on_attach = function (client, bufnr)
            -- neovim's LSP client does not currently support dynamic capabilities registration, so we need to set
            -- the resolved capabilities of the eslint server ourselves!
            client.resolved_capabilities.document_formatting = true
            on_attach(client, bufnr)
        end
        opts.settings = require('eslint').settings
    end

    if server.name == "html" then
      opts.capabilities = require('html').capabilities
      opts.settings = require('html').settings
    end

    if server.name == "jsonls" then
      opts.settings = require('jsonls').settings
    end ]]

	if server.name == "sumneko_lua" then
		local runtime_path = vim.split(package.path, ";")
		table.insert(runtime_path, "lua/?.lua")
		table.insert(runtime_path, "lua/?/init.lua")

		opts.settings = {
			Lua = {
				runtime = {
					-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
					version = "LuaJIT",
					-- Setup your lua path
					path = runtime_path,
				},
				diagnostics = { globals = { "vim" } },
				workspace = {
					library = {
						[vim.fn.expand("$VIMRUNTIME/lua")] = true,
						[vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
					},
					maxPreload = 100000,
					preloadFileSize = 10000,
				},
				telemetry = { enable = false },
			},
		}
	end

	server:setup(opts)
	vim.cmd([[ do User LspAttachBuffers ]])
end)
