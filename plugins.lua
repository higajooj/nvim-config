local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {
	{ "williamboman/mason.nvim", enabled = false },

	{ "christoomey/vim-tmux-navigator", lazy = false },

	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			{
				"windwp/nvim-ts-autotag",
				lazy = false,
				config = true,
			},
		},
		opts = overrides.treesitter,
	},

	{
		"nvim-tree/nvim-tree.lua",
		opts = overrides.nvimtree,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end,
	},

	{
		"stevearc/conform.nvim",
		config = function()
			require("custom.configs.conform")
		end,
	},

	{
		"andweeb/presence.nvim",
		lazy = false,
		config = function()
			require("presence").setup({
				show_time = false,
				buttons = false,
				neovim_image_text = "GIGACHAD TEXT EDITOR",
			})
		end,
	},

	-- To make a plugin not be loaded
	-- {
	--   "NvChad/nvim-colorizer.lua",
	--   enabled = false
	-- },

	-- All NvChad plugins are lazy-loaded by default
	-- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
	-- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
	-- {
	--   "mg979/vim-visual-multi",
	--   lazy = false,
	-- }
}

return plugins
