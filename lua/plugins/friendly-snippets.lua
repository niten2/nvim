return {
	"L3MON4D3/LuaSnip",
	config = function()
		local ls = require("luasnip")
		require("luasnip.loaders.from_vscode").lazy_load() -- Load `friendly-snippets`
		require("luasnip.loaders.from_vscode").load({ paths = "~/.config/nvim/snippets" })
	end,
}
