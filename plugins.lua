local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "javascript",
        "typescript",
        "tsx",
        "c",
        "cpp",
        "rust",
        "html",
        "css",
        "json",
        "vue",
        "svelte"
      }
    }
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  {
    "andweeb/presence.nvim",
    lazy = false,
    config = function()
      require("presence").setup({
        show_time = false,
        buttons = false,
        neovim_image_text = "GIGACHAD TEXT EDITOR"
      })
    end
  }
}

return plugins
