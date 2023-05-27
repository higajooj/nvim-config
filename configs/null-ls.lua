local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  formatting.stylua,
  formatting.prettier,
  formatting.htmlbeautifier,
  lint.erb_lint,
  lint.standardrb,
  formatting.standardrb,
  lint.flake8,
  formatting.black,
  formatting.rustfmt,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
