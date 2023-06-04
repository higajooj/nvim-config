local plugins = {
	{
		"christoomey/vim-tmux-navigator",
		lazy = false,
	},
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"lua-language-server",
				"stylua",
				"typescript-language-server",
				"pyright",
				"prisma-language-server",
				"rust-analyzer",
				"prettier",
				"htmlbeautifier",
				"standardrb",
				"flake8",
				"black",
				"rustfmt",
				"ruby-lsp",
				"markdownlint",
			},
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"rust",
				"javascript",
				"typescript",
				"tsx",
				"c",
				"cpp",
				"rust",
				"html",
				"css",
				"json",
				"vue",
				"svelte",
				"python",
			},
		},
	},

	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"jose-elias-alvarez/null-ls.nvim",
			config = function()
				require("custom.configs.null-ls")
			end,
		},
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end,
	},

	{
		"L3MON4D3/LuaSnip",
		config = function(_, opts)
			require("plugins.configs.others").luasnip(opts)
			require("luasnip").filetype_extend("typescriptreact", { "html" })
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
}

return plugins
