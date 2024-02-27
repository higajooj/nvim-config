local util = require("conform.util")

local options = {
	lsp_fallback = true,

	formatters = {
		biome_sort_imports = {
			meta = {
				url = "https://github.com/biomejs/biome",
				description = "Sort imports with Biome.",
			},
			command = util.from_node_modules("biome"),
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
	},

	formatters_by_ft = {
		lua = { "stylua" },
		c = { "clang_format" },
		cpp = { "clang_format" },
		javascript = { "biome_sort_imports" },
		javascriptreact = { "biome_sort_imports" },
		typescriptreact = { "biome_sort_imports" },
		json = { "biome" },
		html = { "prettierd" },
		css = { "prettierd" },
		scss = { "prettierd" },
	},
}

require("conform").setup(options)
