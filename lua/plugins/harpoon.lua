return {
	"ThePrimeagen/harpoon",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("harpoon").setup()
	end,
	keys = {
		{
			"<leader>ma",
			function()
				require("harpoon.mark").add_file()
			end,
			desc = "Add file to Harpoon",
		},
		{
			"<leader>mm",
			function()
				require("harpoon.ui").toggle_quick_menu()
			end,
			desc = "Harpoon menu",
		},
		{
			"<leader>1",
			function()
				require("harpoon.ui").nav_file(1)
			end,
			desc = "Go to file 1",
		},
		{
			"<leader>2",
			function()
				require("harpoon.ui").nav_file(2)
			end,
			desc = "Go to file 2",
		},
		{
			"<leader>3",
			function()
				require("harpoon.ui").nav_file(3)
			end,
			desc = "Go to file 3",
		},
		{
			"<leader>4",
			function()
				require("harpoon.ui").nav_file(4)
			end,
			desc = "Go to file 4",
		},
	},
}
