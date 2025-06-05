return {
  { lazy = true, "nvim-lua/plenary.nvim" },

--  { "nvim-tree/nvim-web-devicons", opts = {} },
  { "stevearc/oil.nvim", opts = {} },
  { "echasnovski/mini.icons", opts = {} },
  { "echasnovski/mini.statusline", opts = {} },
  { "lewis6991/gitsigns.nvim", opts = {} },
  { "folke/todo-comments.nvim" },


  {
    "numToStr/Comment.nvim",
    opts = {
        -- add any options here
    },
    lazy = false,
  },

  -- "EdenEast/nightfox.nvim", default colorscheme
  "olimorris/onedarkpro.nvim",
-- {
--   "nvim-tree/nvim-tree.lua",
--   cmd = { "NvimTreeToggle", "NvimTreeFocus" },
--   opts = {},
-- },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require "plugins.configs.treesitter"
    end,
  },

--  {
--    "akinsho/bufferline.nvim",
--    opts = require "plugins.configs.bufferline",
--  },

  -- we use blink plugin only when in insert mode
  -- so lets lazyload it at InsertEnter event
  {
    "saghen/blink.cmp",
    version = "1.*",
    event = "InsertEnter",
    dependencies = {
      "rafamadriz/friendly-snippets",

      -- snippets engine
      {
        "L3MON4D3/LuaSnip",
        config = function()
          require("luasnip.loaders.from_vscode").lazy_load()
        end,
      },

      -- autopairs , autocompletes ()[] etc
      { "windwp/nvim-autopairs", opts = {} },
    },
    -- made opts a function cuz cmp config calls cmp module
    -- and we lazyloaded cmp so we dont want that file to be read on startup!
    opts = function()
      return require "plugins.configs.blink"
    end,
  },

  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    cmd = { "Mason", "MasonInstall" },
    opts = {},
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
    end,
  },

  {
    "mrcjkb/rustaceanvim",
    build = "rustup component add rust-analizer",
    ft = { "rust" },
  },

  { "mfussenegger/nvim-dap" },

  {
    "stevearc/conform.nvim",
    opts = require "plugins.configs.conform",
  },

  {
    "nvimdev/indentmini.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
  },

 -- -- files finder etc
 -- {
 --   "nvim-telescope/telescope.nvim",
 --   cmd = "Telescope",
 --   opts = require "plugins.configs.telescope",
 -- },

}
