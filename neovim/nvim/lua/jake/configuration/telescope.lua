local actions = require("telescope.actions")
require("telescope").setup({
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  },
  defaults = {
    find_command = {
      "rg",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
    prompt_prefix = " ", -- symbol on prompt window
    selection_caret = " ", -- symbol on selected row in results window
    entry_prefix = "  ", -- symbol on non-selected rows in results window
    initial_mode = "insert", -- start in insert mode
    selection_strategy = "reset", -- what happens to selection when list changes
    -- sorting_strategy = "ascending", -- start with most important search on top
    -- layout_strategy = "vertical",
    -- prompt_position = "top", -- have prompt at the top (has no effect on vertical configuration)
    file_ignore_patterns = { "node_modules/.*" }, -- never search in node_modules/ dir
    generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
    display_path = true,
    winblend = 0, -- window should not be transparent
    border = {}, -- no border?
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }, -- border chars
    color_devicons = true, -- colorize used icons
    use_less = true, -- less is bash program for preview file contents
    set_env = { ["COLORTERM"] = "truecolor" }, -- use all the colors
    file_previewer = require("telescope.previewers").vim_buffer_cat.new,
    grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
    qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
    buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
    -- preview_cutoff = 120,
    mappings = {
      i = {
        ["<c-j>"] = actions.move_selection_next,
        ["<c-k>"] = actions.move_selection_previous,
        ["<c-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
        ["<cr>"] = actions.select_default + actions.center,
      },
      n = {
        ["<c-j>"] = actions.move_selection_next,
        ["<c-k>"] = actions.move_selection_previous,
        ["<c-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
        ["<cr>"] = actions.select_default + actions.center,
        ["q"] = actions.close,
      },
    },
  },
})
require("telescope").load_extension("fzf")
require("telescope").load_extension("file_browser")
require'telescope'.load_extension('zoxide')

vim.api.nvim_set_keymap(
  "n",
  "<leader>fe",
  "<cmd>lua require 'telescope'.extensions.file_browser.file_browser()<cr>",
  { nowait = true, silent = true, noremap = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>ff",
  "<cmd>lua require('telescope.builtin').find_files()<cr>",
  { nowait = true, silent = true, noremap = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>fg",
  "<cmd>lua require('telescope.builtin').live_grep()<cr>",
  { nowait = true, silent = true, noremap = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>fb",
  "<cmd>lua require('telescope.builtin').buffers()<cr>",
  { nowait = true, silent = true, noremap = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>fh",
  "<cmd>lua require('telescope.builtin').help_tags()<cr>",
  { nowait = true, silent = true, noremap = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>fk",
  "<cmd>Telescope keymaps<cr>",
  { nowait = true, silent = true, noremap = true }
)
vim.api.nvim_set_keymap("n", "<leader>ft", "<cmd>Telescope<cr>", { nowait = true, silent = true, noremap = true })
vim.api.nvim_set_keymap(
  "n",
  "<leader>fc",
  "<cmd>Telescope commands<cr>",
  { nowait = true, silent = true, noremap = true }
)
