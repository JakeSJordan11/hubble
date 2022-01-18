-- Gruvbox initialization
--[[
vim.api.nvim_set_var('gruvbox_material_better_performance', 1)
vim.api.nvim_set_var('gruvbox_material_enable_bold', 1)
vim.api.nvim_set_var('gruvbox_material_enable_italic', 1)
vim.api.nvim_set_var('gruvbox_material_sign_column_background', 'light')
vim.cmd'colorscheme gruvbox-material'
--]]

-- tokyonight
-- vim.api.nvim_set_var('tokyonight_style', 'storm')
-- vim.api.nvim_set_var('tokyonight_style', 'day')
vim.api.nvim_set_var("tokyonight_italic_comments", true)
vim.api.nvim_set_var("tokyonight_italic_keywords", true)
vim.api.nvim_set_var("tokyonight_italic_functions", true)
vim.api.nvim_set_var("tokyonight_sidebars", { "qf", "vista_kind", "terminal", "packer" })
vim.api.nvim_set_var("tokyonight_style", "night")
vim.cmd("colorscheme tokyonight")

-- rvcs
-- vim.cmd'colorscheme rvcs'

-- darkplus
-- vim.cmd'colorscheme darkplus'

-- sonokai
-- vim.cmd'colorscheme sonokai'

-- edge
-- vim.cmd'colorscheme edge'

-- sonokai
-- vim.cmd'colorscheme everforest'

-- meleange
-- vim.cmd'colorscheme melange'

-- Gruvbox
-- vim.o.background = "dark" -- or "light" for light mode
-- vim.cmd([[colorscheme gruvbox]])
