-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

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

local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.tsserver.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
