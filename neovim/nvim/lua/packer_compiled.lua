-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = true
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\JakeS\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\JakeS\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\JakeS\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\JakeS\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\JakeS\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["DAPInstall.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\DAPInstall.nvim",
    url = "https://github.com/Pocco81/DAPInstall.nvim"
  },
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["NeoZoom.lua"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\NeoZoom.lua",
    url = "https://github.com/nyngwang/NeoZoom.lua"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-npm"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-npm",
    url = "https://github.com/David-Kunz/cmp-npm"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  ["cmp-tabnine"] = {
    after_files = { "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-tabnine\\after\\plugin\\cmp-tabnine.lua" },
    config = { "\27LJ\2\np\0\0\5\0\4\0\b6\0\0\0'\2\1\0B\0\2\2\18\3\0\0009\1\2\0005\4\3\0B\1\3\1K\0\1\0\1\0\3\14max_lines\3è\a\tsort\2\20max_num_results\3\20\nsetup\23cmp_tabnine.config\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-tabnine",
    url = "https://github.com/tzachar/cmp-tabnine"
  },
  cmp_luasnip = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  colorschemes = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\colorschemes",
    url = "https://github.com/lunarvim/colorschemes"
  },
  ["darkplus.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\darkplus.nvim",
    url = "https://github.com/martinsione/darkplus.nvim"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  edge = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\edge",
    url = "https://github.com/sainnhe/edge"
  },
  everforest = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\everforest",
    url = "https://github.com/sainnhe/everforest"
  },
  ["filetype.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["fine-cmdline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\fine-cmdline.nvim",
    url = "https://github.com/VonHeikemen/fine-cmdline.nvim"
  },
  ["focus.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\focus.nvim",
    url = "https://github.com/beauwilliams/focus.nvim"
  },
  ["gitlinker.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gitlinker.nvim",
    url = "https://github.com/ruifm/gitlinker.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["glow.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\glow.nvim",
    url = "https://github.com/ellisonleao/glow.nvim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gruvbox-material",
    url = "https://github.com/sainnhe/gruvbox-material"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["kanagawa.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lua-dev.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lua-dev.nvim",
    url = "https://github.com/folke/lua-dev.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lush.nvim",
    url = "https://github.com/rktjmp/lush.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  melange = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\melange",
    url = "https://github.com/savq/melange"
  },
  neovim = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neovim",
    url = "https://github.com/rose-pine/neovim"
  },
  ["neovim-session-manager"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neovim-session-manager",
    url = "https://github.com/Shatur/neovim-session-manager"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["numb.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\numb.nvim",
    url = "https://github.com/nacro90/numb.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lsp-ts-utils"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lsp-ts-utils",
    url = "https://github.com/jose-elias-alvarez/nvim-lsp-ts-utils"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-lsputils"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lsputils",
    url = "https://github.com/RishabhRD/nvim-lsputils"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  popfix = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\popfix",
    url = "https://github.com/RishabhRD/popfix"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["prettier.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\prettier.nvim",
    url = "https://github.com/MunifTanjim/prettier.nvim"
  },
  ["project.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["refactoring.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\refactoring.nvim",
    url = "https://github.com/ThePrimeagen/refactoring.nvim"
  },
  ["roshnivim-cs"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\roshnivim-cs",
    url = "https://github.com/shaeinst/roshnivim-cs"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["searchbox.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\searchbox.nvim",
    url = "https://github.com/VonHeikemen/searchbox.nvim"
  },
  sonokai = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\sonokai",
    url = "https://github.com/sainnhe/sonokai"
  },
  ["surround.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\surround.nvim",
    url = "https://github.com/blackCauldron7/surround.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-media-files.nvim",
    url = "https://github.com/nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope-vim-bookmarks.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-vim-bookmarks.nvim",
    url = "https://github.com/tom-anders/telescope-vim-bookmarks.nvim"
  },
  ["telescope-zoxide"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-zoxide",
    url = "https://github.com/jvgrootveld/telescope-zoxide"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["twilight.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\twilight.nvim",
    url = "https://github.com/folke/twilight.nvim"
  },
  ["vim-bookmarks"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-bookmarks",
    url = "https://github.com/MattesGroeger/vim-bookmarks"
  },
  ["windline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\windline.nvim",
    url = "https://github.com/windwp/windline.nvim"
  },
  ["zen-mode.nvim"] = {
    loaded = true,
    path = "C:\\Users\\JakeS\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-cmp ]]
vim.cmd [[ packadd cmp-tabnine ]]

-- Config for: cmp-tabnine
try_loadstring("\27LJ\2\np\0\0\5\0\4\0\b6\0\0\0'\2\1\0B\0\2\2\18\3\0\0009\1\2\0005\4\3\0B\1\3\1K\0\1\0\1\0\3\14max_lines\3è\a\tsort\2\20max_num_results\3\20\nsetup\23cmp_tabnine.config\frequire\0", "config", "cmp-tabnine")

time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles(1) end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
