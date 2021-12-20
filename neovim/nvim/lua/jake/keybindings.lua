--Windows helpers--
SetKeymap('n', '<c-z>', '')
SetKeymap('i', '<c-s>', '<c-o><cmd>w<cr>', { noremap = false })
SetKeymap('n', '<c-s>', '<cmd>w<cr>', { noremap = false })

--Text movement--
SetKeymap('n', '<a-down>', '<cmd>move +1<cr>')
SetKeymap('n', '<a-j>', '<cmd>move +1<cr>')
SetKeymap('n', '<as-j>', 'yyp')
SetKeymap('n', '<a-up>', '<cmd>move -2<cr>')
SetKeymap('n', '<a-k>', '<cmd>move -2<cr>')
SetKeymap('n', '<as-k>', 'yyP')

--Windows movement--
SetKeymap('n', '<leader>w', '<c-w>')

-- Highlight on yank -- make this use lua not vimscript!!!
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]
