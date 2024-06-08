local M = {}

M.treesitter = {
	ensure_installed = {
		"bash",
		"c",
		"cpp",
		"css",
		"csv",
		"dockerfile",
		"git_config",
		"gitignore",
		"graphql",
		"html",
		"hyprlang",
		"java",
		"javascript",
		"json",
		"markdown",
		"prisma",
		"python",
		"ruby",
		"rust",
		"svelte",
		"terraform",
		"tsx",
		"typescript",
		"vue",
		"xml",
		"yaml",
	},
	auto_install = true,
	indent = { enable = true },
}

return M
