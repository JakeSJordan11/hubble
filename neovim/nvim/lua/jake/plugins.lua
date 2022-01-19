return require("packer").startup {
  function(use)
    use "wbthomason/packer.nvim"

    use "nvim-lua/plenary.nvim"

    use "nvim-lua/popup.nvim"

    use "kyazdani42/nvim-web-devicons"

    use "RishabhRD/popfix"

    use "folke/tokyonight.nvim"
    use "sainnhe/gruvbox-material"
    use "sainnhe/everforest"
    use "sainnhe/sonokai"
    use "sainnhe/edge"
    use "shaeinst/roshnivim-cs"
    use "martinsione/darkplus.nvim"
    use "savq/melange"
    use "rktjmp/lush.nvim"
    use "ellisonleao/gruvbox.nvim"

    use "nvim-treesitter/nvim-treesitter"
    use "nvim-treesitter/nvim-treesitter-textobjects"
    use "JoosepAlviste/nvim-ts-context-commentstring"
    use "nvim-treesitter/playground"
    use "windwp/nvim-ts-autotag"

    use "nvim-telescope/telescope.nvim"
    use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
    use "nvim-telescope/telescope-file-browser.nvim"
    use "jvgrootveld/telescope-zoxide"

    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"
    use "jose-elias-alvarez/null-ls.nvim"
    use "jose-elias-alvarez/nvim-lsp-ts-utils"
    use "RishabhRD/nvim-lsputils"
    -- use("tami5/lspsaga.nvim")

    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "hrsh7th/cmp-emoji"
    use "hrsh7th/nvim-cmp"
    use {
      "tzachar/cmp-tabnine",
      config = function()
        local tabnine = require "cmp_tabnine.config"
        tabnine:setup {
          max_lines = 1000,
          max_num_results = 20,
          sort = true,
        }
      end,
      after = "nvim-cmp",
      run = "powershell ./install.ps1",
      requires = "hrsh7th/nvim-cmp",
    }
    --[[ use({
     "tzachar/cmp-tabnine",
     after = "nvim-cmp",
     run = "powershell ./install.ps1",
     requires = "hrsh7th/nvim-cmp",
    }) ]]
    use "hrsh7th/cmp-nvim-lua"
    use "David-Kunz/cmp-npm"
    use "f3fora/cmp-spell"
    use "saadparwaiz1/cmp_luasnip"
    use "onsails/lspkind-nvim"
    use "L3MON4D3/LuaSnip"

    use "beauwilliams/focus.nvim"

    use "MunifTanjim/prettier.nvim"

    use "kyazdani42/nvim-tree.lua"

    -- use("mhinz/vim-startify")

    use "romgrk/barbar.nvim"

    use "windwp/windline.nvim"

    use "akinsho/toggleterm.nvim"

    use "numToStr/Comment.nvim"

    use "folke/zen-mode.nvim"

    use "folke/twilight.nvim"

    use "ellisonleao/glow.nvim"

    use "nathom/filetype.nvim"

    use "lewis6991/impatient.nvim"

    use "lukas-reineke/indent-blankline.nvim"

    use "windwp/nvim-autopairs"

    use "folke/trouble.nvim"

    use "rcarriga/nvim-notify"

    --[[ use {
    'goolord/alpha-nvim',
      config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.opts)
      end
    } ]]

    use "stevearc/dressing.nvim"

    use "simrat39/rust-tools.nvim"

    use "lewis6991/gitsigns.nvim"

    use "ThePrimeagen/refactoring.nvim"

    use "folke/lua-dev.nvim"

    -- use("github/copilot.vim")
    use "MunifTanjim/nui.nvim"
    use "VonHeikemen/fine-cmdline.nvim"
    use "VonHeikemen/searchbox.nvim"

    use {
      "nyngwang/NeoZoom.lua",
    }
    use {

      "iamcco/markdown-preview.nvim",
      run = "cd app && npm install",
      ft = "markdown",
    }

    use "MattesGroeger/vim-bookmarks"
    use "lunarvim/colorschemes"
    use "rose-pine/neovim"
    use "rebelot/kanagawa.nvim"
    use "nvim-telescope/telescope-ui-select.nvim"
    use "tom-anders/telescope-vim-bookmarks.nvim"
    use "nvim-telescope/telescope-media-files.nvim"
    use "nacro90/numb.nvim"
    -- use "tversteeg/registers.nvim"
    -- use "metakirby5/codi.vim"
    use "blackCauldron7/surround.nvim"
    use "Shatur/neovim-session-manager"
    -- use "windwp/nvim-spectre"
    -- use "monaqa/dial.nvim"
    use "norcalli/nvim-colorizer.lua"
    -- use "unblevable/quick-scope"
    -- use "phaazon/hop.nvim"
    use "ahmedkhalf/project.nvim"
    -- use "rafamadriz/friendly-snippets"
    -- use "mizlan/iswap.nvim"
    use "mfussenegger/nvim-dap"
    use "theHamsta/nvim-dap-virtual-text"
    use "rcarriga/nvim-dap-ui"
    use "Pocco81/DAPInstall.nvim"
    -- use "f-person/git-blame.nvim"
    use "ruifm/gitlinker.nvim"
    use "antoinemadec/FixCursorHold.nvim"
  end,
  config = {
    display = {
      open_fn = function()
        return require("packer.util").float { border = "rounded" }
      end,
    },
    profile = {
      enable = true,
      threshold = 1, -- the amount in ms that a plugins load time must be over for it to be included in the profile
    },
    compile_path = vim.fn.stdpath "config" .. "/lua/packer_compiled.lua",
  },
}
