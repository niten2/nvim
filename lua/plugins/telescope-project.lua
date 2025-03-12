-- ~/.local/share/nvim/telescope-projects.txt
--https://github.com/nvim-telescope/telescope-project.nvim/tree/master

return {
	"nvim-telescope/telescope-project.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	keys = {
		{ "<leader>fp", "<cmd>Telescope project<CR>", desc = "Projects" },
	},
	config = function()
		require("telescope").setup({
			extensions = {
				project = {
					base_dirs = {
						"~/eva/chat-note/",
						"~/eva/chat-back-end/",
						"~/private/dotfiles",
					},
				},
			},
		})
		require("telescope").load_extension("project")
	end,
}
