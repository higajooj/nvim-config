local options = {
	lsp_fallback = true,

	formatters_by_ft = {
		lua = { "stylua" },
		c = { "astyle" },
		cpp = { "astyle" },
		javascript = { "biome" },
		javascriptreact = { "biome" },
		typescriptreact = { "biome" },
		json = { "biome" },
		html = { "prettierd" },
		css = { "prettierd" },
		scss = { "prettierd" },
	},
}

require("conform").setup(options)
