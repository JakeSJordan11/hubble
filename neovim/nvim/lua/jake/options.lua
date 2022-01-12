vim.api.nvim_set_keymap("", "<space>", "<nop>", { nowait = true, silent = true, noremap = true })
vim.api.nvim_set_var("mapleader", " ")
vim.api.nvim_set_var("maplocalleader", " ")
vim.opt.backup = false
vim.opt.clipboard = "unnamedplus"
vim.opt.cmdheight = 1
vim.opt.colorcolumn = "120"
vim.opt.completeopt = "menuone,noselect"
vim.opt.concealcursor = "i"
vim.opt.conceallevel = 0
vim.opt.cursorline = true
vim.opt.equalalways = false
vim.opt.expandtab = true
vim.opt.foldenable = false
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldmethod = "expr"
vim.opt.guifont = "OperatorMonoSSmLig NF, DankMono NF, Hack NF, Cascadia Mono, *"
vim.opt.hidden = true
vim.opt.hlsearch = false
vim.opt.inccommand = "split"
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.list = true
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.shiftround = true
vim.opt.shiftwidth = 2
vim.opt.shortmess = "filnxtToOF"
vim.opt.showcmd = true
vim.opt.showmode = false
vim.opt.showmatch = true
vim.opt.sidescroll = 5
vim.opt.sidescrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.smarttab = false
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.tabstop = 2
vim.opt.termguicolors = true
vim.opt.ttimeoutlen = 1
vim.opt.undofile = true
vim.opt.updatetime = 50
vim.opt.wildmenu = true
vim.opt.writebackup = false
vim.opt.wrap = false
-- vim.opt.listchars = "space:·"
