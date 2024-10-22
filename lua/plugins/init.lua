return {
  { "williamboman/mason.nvim", enabled = false },

  { "christoomey/vim-tmux-navigator", lazy = false },

  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },

  -- { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = function()
      local options = require "nvchad.configs.telescope"
      require("telescope").load_extension "fzf"

      return options
    end,
  },

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
    -- enabled = false,
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
