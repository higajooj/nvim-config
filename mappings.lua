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

		["<C-Up>"] = { "5<C-w>+", "increase window height" },
		["<C-Down>"] = { "5<C-w>-", "decrease window height" },
		["<C-Left>"] = { "5<C-w><", "decrease window width" },
		["<C-Right>"] = { "5<C-w>>", "increase window width" },

		["<leader>q"] = { "<cmd> q <CR>", "close" },

		["<leader>fm"] = {
			function()
				require("conform").format({
					lsp_fallback = true,
				})
			end,
			"format",
		},
		["<leader>fp"] = {
			function()
				require("conform").format({ formatters = { "prettier" } })
			end,
			"format (prettier)",
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

M.tabufline = {
	plugin = true,

	n = {
		["<S-l>"] = {
			function()
				require("nvchad.tabufline").tabuflineNext()
			end,
			"goto next buffer",
		},

		["<S-h>"] = {
			function()
				require("nvchad.tabufline").tabuflinePrev()
			end,
			"goto prev buffer",
		},

		["[b"] = {
			function()
				require("nvchad.tabufline").move_buf(-1)
			end,
			"move buffer left",
		},

		["]b"] = {
			function()
				require("nvchad.tabufline").move_buf(1)
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
