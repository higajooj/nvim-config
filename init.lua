vim.opt.colorcolumn = "80"

vim.cmd([[
   augroup ilikecursorline
      autocmd VimEnter * :highlight CursorLine guibg=#282a2e
   augroup END
]])
