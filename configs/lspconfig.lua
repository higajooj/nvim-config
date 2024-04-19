local capabilities = require("plugins.configs.lspconfig").capabilities
local on_attach = require("plugins.configs.lspconfig").on_attach

local lspconfig = require("lspconfig")

local servers = {
	"ccls",
	"rust_analyzer",
	"tsserver",
	"jsonls",
	"emmet_language_server",
	"pyright",
	"prismals",
	"cssls",
	"jdtls",
	"terraformls",
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

local M = {}

M.on_attach = on_attach

return M
