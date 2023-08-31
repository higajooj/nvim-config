vim.opt.colorcolumn = "80"

in_wsl = os.getenv("WSL_DISTRO_NAME") ~= nil

if in_wsl then
	vim.g.clipboard = {
		name = "wsl clipboard",
		copy = { ["+"] = { "clip.exe" }, ["*"] = { "clip.exe" } },
		paste = { ["+"] = { "nvim_paste" }, ["*"] = { "nvim_paste" } },

		cache_enabled = true,
	}
end

vim.cmd([[
   augroup ilikecursorline
      autocmd VimEnter * :highlight CursorLine guibg=#282a2e
   augroup END
]])
