local util = require "conform.util"

local options = {
  formatters = {
    biome_sort_imports = {
      meta = {
        url = "https://github.com/biomejs/biome",
        description = "Sort imports with Biome.",
      },
      command = util.from_node_modules "biome",
      stdin = true,
      args = {
        "check",
        "--formatter-enabled=true",
        "--linter-enabled=false",
        "--apply",
        "--stdin-file-path",
        "$FILENAME",
      },
    },
    shfmt = {
      prepend_args = { "-i", "2" },
    },
    htmlbeautifier = {
      prepend_args = { "-b", "1" },
    },
  },

  formatters_by_ft = {
    lua = { "stylua" },
    c = { "clang_format" },
    cpp = { "clang_format" },
    python = { "black" },
    javascript = { "biome_sort_imports" },
    typescript = { "biome_sort_imports" },
    javascriptreact = { "biome_sort_imports" },
    typescriptreact = { "biome_sort_imports" },
    html = { "prettier" },
    css = { "prettier" },
    scss = { "prettier" },
    json = { "biome" },
    terraform = { "terraform_fmt" },
    sh = { "shfmt" },
    zsh = { "shfmt" },
    markdown = { "prettier" },
    yaml = { "prettier" },
    ruby = { "standardrb" },
    eruby = { "htmlbeautifier" },
    sql = { "pg_format" },
  },
}

return options
