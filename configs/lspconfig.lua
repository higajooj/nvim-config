local capabilities = require("plugins.configs.lspconfig").capabilities
local on_attach = require("plugins.configs.lspconfig").on_attach

local lspconfig = require("lspconfig")

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
	"rust_analyzer",
	"terraformls",
	"tsserver",
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
