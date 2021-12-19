--WINDOWS OS--
SetKeymap('n', '<c-z>', '')
SetKeymap('i', '<c-s>', '<c-o><cmd>w<cr>', { noremap = false })
SetKeymap('n', '<c-s>', '<cmd>w<cr>', { noremap = false })

--TEXT MOVEMENT--
SetKeymap('n', '<a-down>', '<cmd>move +1<cr>')
SetKeymap('n', '<a-j>', '<cmd>move +1<cr>')
SetKeymap('n', '<as-j>', 'yyp')
SetKeymap('n', '<a-up>', '<cmd>move -2<cr>')
SetKeymap('n', '<a-k>', '<cmd>move -2<cr>')
SetKeymap('n', '<as-k>', 'yyP')

--WINDOW MOVEMENT--
SetKeymap('n', '<leader>w', '<c-w>')

--SYNTAX & HIGHLIGHTING--
SetKeymap('n', '<leader>h', '<cmd>nohlsearch<cr>')

--GREETER--
SetKeymap('n', '<leader>ss', '<cmd>SSave<cr>')
SetKeymap('n', '<leader>sl', '<cmd>SLoad<cr>')
SetKeymap('n', '<leader>sd', '<cmd>SDelete<cr>')
SetKeymap('n', '<leader>sh', '<cmd>Startify<cr>')

--ZENMODE--
SetKeymap('n', '<leader>z', '<cmd>ZenMode<cr>')

--EXPLORER--
SetKeymap('n', '<leader>t', '<cmd>NvimTreeToggle<cr>')

--TELESCOPE--
SetKeymap('n', '<leader>ff', '<cmd>lua require(\'telescope.builtin\').find_files()<cr>')
SetKeymap('n', '<leader>fe', '<cmd>lua require(\'telescope.builtin\').file_browser()<cr>')
SetKeymap('n', '<leader>fg', '<cmd>lua require(\'telescope.builtin\').live_grep()<cr>')
SetKeymap('n', '<leader>fb', '<cmd>lua require(\'telescope.builtin\').buffers()<cr>')
SetKeymap('n', '<leader>fh', '<cmd>lua require(\'telescope.builtin\').help_tags()<cr>')
SetKeymap('n', '<leader>fk', '<cmd>Telescope keymaps<cr>')
SetKeymap('n', '<leader>ft', '<cmd>Telescope<cr>')
SetKeymap('n', '<leader>fc', '<cmd>Telescope commands<cr>')

--BARBAR--
SetKeymap('n', '<tab>', '<cmd>BufferNext<cr>')
SetKeymap('n', '<s-tab>', '<cmd>BufferPrevious<cr>')
SetKeymap('n', '<leader>bc', '<cmd>BufferClose<cr>')
SetKeymap('n', '<Leader>bac', '<cmd>BufferCloseAllButCurrent<cr>')

--GIT--
SetKeymap('n', '<leader>gg', '<cmd>lua _lazygit_toggle()<cr>')

--TERMINAL KEYMAPS--
SetKeymap('n', '<leader>`', '<cmd>ToggleTerm<cr>')
SetKeymap('n', '<leader>2`', '<cmd>ToggleTerm2<cr>')
SetKeymap('t', '<esc><esc>', '<c-\\><c-n>')

--TROUBLE--
SetKeymap("n", '<leader>xx', '<cmd>TroubleToggle<cr>')
SetKeymap("n", '<leader>xw', '<cmd>Trouble workspace_diagnostics<cr>')
SetKeymap("n", '<leader>xd', '<cmd>Trouble document_diagnostics<cr>')
SetKeymap("n", '<leader>xl', '<cmd>Trouble loclist<cr>')
SetKeymap("n", '<leader>xq', '<cmd>Trouble quickfix<cr>')
SetKeymap("n", 'gR', '<cmd>Trouble lsp_references<cr>')


-- Highlight on yank -- make this use lua not vimscript!!!
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]
