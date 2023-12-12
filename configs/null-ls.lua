local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local xq = formatting.xq.with({
	filetypes = { "xml", "svg" },
})

local sources = {
	formatting.stylua,
	formatting.prettier,
	formatting.htmlbeautifier,
	xq,
	lint.erb_lint,
	lint.standardrb,
	formatting.standardrb,
	lint.flake8,
	formatting.black,
	formatting.rustfmt,
	formatting.markdownlint,
	lint.markdownlint,
	formatting.clang_format,
}

null_ls.setup({
	debug = true,
	sources = sources,
})
