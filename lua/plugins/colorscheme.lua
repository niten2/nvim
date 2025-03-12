return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			require("gruvbox").setup({ contrast = "hard" })
			vim.o.background = "light" -- Включаем светлую тему
			vim.cmd("colorscheme gruvbox")
		end,
	},

	-- {
	-- 	"LazyVim/LazyVim",
	-- 	opts = {
	-- 		-- colorscheme = "dracula",
	-- 		-- colorscheme = "onelight",
	-- 		colorscheme = "gruvbox",
	-- 		-- colorscheme = "tokyonight-day",
	-- 		-- colorscheme = "spacemacs-theme",
	-- 	},
	-- },
	-- { "dracula/vim" },
	--
	-- { "ellisonleao/gruvbox.nvim", priority = 1000, config = true },
	-- { "olimorris/onedarkpro.nvim", },
	--
	-- { "catppuccin/nvim" },

	-- { "folke/tokyonight.nvim" },
	-- { "colepeters/spacemacs-theme.vim" },

	-- {
	-- 	"marko-cerovac/material.nvim",
	-- 	config = function()
	-- 		require("material").setup({
	-- 			plugins = {
	-- 				"dap",
	-- 				"dashboard",
	-- 				-- "gitsigns",
	-- 				-- "hop",
	-- 				"indent-blankline",
	-- 				"lspsaga",
	-- 				"mini",
	-- 				"neogit",
	-- 				-- "neorg",
	-- 				"nvim-cmp",
	-- 				"nvim-navic",
	-- 				-- "nvim-tree",
	-- 				"nvim-web-devicons",
	-- 				-- "sneak",
	-- 				"telescope",
	-- 				"trouble",
	-- 				"which-key",
	-- 			},
	-- 		})
	-- 		-- vim.g.material_style = "deep ocean"
	-- 		-- vim.g.material_style = "li"
	-- 	end,
	-- },
}
