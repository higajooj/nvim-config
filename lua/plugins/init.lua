return {
  { "williamboman/mason.nvim", enabled = false },

  { "christoomey/vim-tmux-navigator", lazy = false },

  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      {
        "windwp/nvim-ts-autotag",
        lazy = false,
        config = true,
      },
    },
    opts = require "configs.treesitter",
  },

  {
    "andweeb/presence.nvim",
    lazy = false,
    config = function()
      require("presence").setup {
        show_time = false,
        buttons = false,
        neovim_image_text = "GIGACHAD TEXT EDITOR",
      }
    end,
  },
}
