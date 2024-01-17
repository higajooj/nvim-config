local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local xq = formatting.xq.with({
	filetypes = { "xml", "svg" },
})

local sources = {
	xq,
	formatting.clang_format,
	formatting.stylua,
	formatting.prettier,
	formatting.htmlbeautifier,
	formatting.standardrb,
	formatting.black,
	formatting.rustfmt,
	formatting.markdownlint,
	lint.erb_lint,
	lint.standardrb,
	lint.flake8,
	lint.markdownlint,
}

null_ls.setup({
	debug = true,
	sources = sources,
})
