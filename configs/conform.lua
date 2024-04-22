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
		-- docker_utils = {
		-- 	meta = {
		-- 		url = "https://github.com/rcjsuen/dockerfile-utils",
		-- 		description = "A library and command line interface for formatting and linting Dockerfiles.",
		-- 	},
		-- 	command = "dockerfile-utils",
		-- 	stdin = true,
		-- 	args = {
		-- 		"format",
		-- 		"$FILENAME",
		-- 	},
		-- },
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
		html = { "prettierd" },
		css = { "prettierd" },
		scss = { "prettierd" },
		json = { "biome" },
		terraform = { "terraform_fmt" },
		sh = { "shfmt" },
		markdown = { "prettierd" },
	},
}

require("conform").setup(options)
