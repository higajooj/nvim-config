-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local servers = {
  "ansiblels",
  "cssls",
  "dockerls",
  "emmet_language_server",
  "herb_ls",
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

vim.lsp.config("clangd", {
  cmd = {
    "clangd",
    "--query-driver=/usr/bin/gcc*",
    "--background-index",
    "--clang-tidy",
    "--completion-style=detailed",
    "--header-insertion=never",
    "--all-scopes-completion",
  },
})
vim.lsp.enable("clangd")
