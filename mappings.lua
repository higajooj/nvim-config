local M = {}

M.disabled = {
	n = {
		["<tab>"] = "",
		["<S-tab>"] = "",
		["<C-s>"] = "",
	},
}

M.general = {
	n = {
		["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
		["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
		["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
		["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },

		["<leader>q"] = { "<cmd> q <CR>", "close" },

		["<leader>fm"] = {
			function()
				vim.lsp.buf.format({ async = true })
			end,
			"lsp formatting",
		},

		["<leader>tt"] = {
			function()
				require("base46").toggle_transparency()
			end,
			"toggle transparency",
		},

		["<A-k>"] = { ":m-2<CR>==", "move up" },
		["<A-j>"] = { ":m+<CR>==", "move down" },

		["d"] = { '"_d' },
		["<leader>d"] = { "d" },
	},
	i = {
		["<A-k>"] = { "<ESC>:m-2<CR> ==", "move up" },
		["<A-j>"] = { "<ESC>:m+<CR> ==", "move down" },
	},
	v = {
		["<A-k>"] = { ":m '<-2<CR>gv=gv", "move up" },
		["<A-j>"] = { ":m '>+1<CR>gv=gv", "move down" },

		["d"] = { '"_d' },
		["<leader>d"] = { "d" },

		["<"] = { "<gv", "indent left" },
		[">"] = { ">gv", "indent right" },
	},
}

M.lspconfig = {
	plugin = true,

	n = {
		["<leader>la"] = {
			function()
				vim.lsp.buf.add_workspace_folder()
			end,
			"add workspace folder",
		},

		["<leader>lr"] = {
			function()
				vim.lsp.buf.remove_workspace_folder()
			end,
			"remove workspace folder",
		},

		["<leader>ll"] = {
			function()
				print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
			end,
			"list workspace folders",
		},
	},
}

M.tabufline = {
	plugin = true,

	n = {
		["<S-l>"] = {
			function()
				require("nvchad_ui.tabufline").tabuflineNext()
			end,
			"goto next buffer",
		},

		["<S-h>"] = {
			function()
				require("nvchad_ui.tabufline").tabuflinePrev()
			end,
			"goto prev buffer",
		},

		["[b"] = {
			function()
				require("nvchad_ui.tabufline").move_buf(-1)
			end,
			"move buffer left",
		},

		["]b"] = {
			function()
				require("nvchad_ui.tabufline").move_buf(1)
			end,
			"move buffer right",
		},
	},
}

M.telescope = {
	plugin = true,

	n = {
		["<leader>fl"] = {
			function()
				require("telescope.builtin").resume()
			end,
		},
	},
}

return M
