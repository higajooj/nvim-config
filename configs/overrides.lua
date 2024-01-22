local M = {}

M.treesitter = {
	ensure_installed = {
		"c",
		"cpp",
		"rust",
		"html",
		"css",
		"javascript",
		"typescript",
		"tsx",
		"json",
		"prisma",
		"graphql",
		"ruby",
		"vue",
		"svelte",
		"python",
		"markdown",
	},
	autotag = { enable = true },
	indent = { enable = true },
}

return M
