-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local servers = {
  "ansiblels",
  "ccls",
  "cssls",
  "dockerls",
  "emmet_language_server",
  "jdtls",
  "jinja_lsp",
  "jsonls",
  "lemminx",
  "prismals",
  "pyright",
  "ruby_lsp",
  "rust_analyzer",
  "terraformls",
  "ts_ls",
  "tailwindcss",
  -- "standardrb",
}

vim.lsp.enable(servers)
