function SetKeymap(mode, lhs, rhs, opts) -- Sets a global |mapping| for the given mode.
	vim.api.nvim_set_keymap(
		mode,
		lhs,
		rhs,
		vim.tbl_extend("keep", opts or {}, {
			nowait = true,
			silent = true,
			noremap = true,
		})
	)
end

function SetBufKeymap(buffer, mode, lhs, rhs, opts)
	vim.api.nvim_buf_set_keymap(
		buffer,
		mode,
		lhs,
		rhs,
		vim.tbl_extend("keep", opts or {}, {
			nowait = true,
			silent = true,
			noremap = true,
		})
	)
end

function SetOption(scope, name, value) -- sets an option value
	vim["opt" or scope][name] = value
end

function SetBufOption(buffer, name, value) -- sets an option value
	vim.api.nvim_buf_set_option(buffer, name, value)
end

function SetgVar(name, value) -- Sets a global (g:) variable.
	vim.api.nvim_set_var(name, value)
end

function SetvVar(name, value) -- Sets a v: variable, if it is not readonly.
	vim.api.nvim_set_vvar(name, value)
end

--[[ vim.api.nvim_command('highlight DiagnosticVirtualTextError guibg=none')
vim.api.nvim_command('highlight DiagnosticVirtualTextHint guibg=none')
vim.api.nvim_command('highlight DiagnosticVirtualTextInfo guibg=none')
vim.api.nvim_command('highlight DiagnosticVirtualTextWarn guibg=none')
vim.cmd'highlight DiagnosticVirtualTextError guibg=none'
vim.cmd'highlight DiagnosticVirtualTextHint guibg=none'
vim.cmd'highlight DiagnosticVirtualTextInfo guibg=none'
vim.cmd'highlight DiagnosticVirtualTextWarn guibg=none' ]]
