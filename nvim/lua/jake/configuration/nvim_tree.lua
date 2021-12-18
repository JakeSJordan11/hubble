-- Var('nvim_tree_git_hl', 1)-- 0 by default, will enable file highlight for git attributes (can be used without the icons).
-- Var('nvim_tree_indent_markers', 1)-- 0 by default, this option shows indent markers when folders are open
-- Var('nvim_tree_refresh_wait', 500)-- 1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.
-- Var('nvim_tree_special_files', 'README.md, Makefile, MAKEFILE, .env')-- List of filenames that gets highlighted with NvimTreeSpecialFile
-- Var('nvim_tree_quit_on_open', 1)-- 0 by default, closes the tree when you open a file

require'nvim-tree'.setup {
open_on_setup = true,
update_cwd = true,
update_focused_file = {
  enable = true,
  },
view = {
  auto_resize = true,
  number = true,
  relativenumber = true,
  },
}
