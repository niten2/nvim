-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- https://www.reddit.com/r/neovim/comments/13zd9sc/is_there_a_way_to_configure_indentation_per/
-- https://www.reddit.com/r/neovim/comments/vu1y6e/correct_way_to_set_language_specific_settings_in/

vim.cmd([[
  augroup myfiletypes
    autocmd!
    autocmd FileType ruby,lua,eruby,yaml,javascript,typescript,html,css set ai sw=2 sts=2 et
    autocmd FileType java set ai sw=4 sts=4 et
  augroup END
]])

vim.api.nvim_create_autocmd("FileType", {
	pattern = "org",
	callback = function()
		vim.opt_local.autoindent = false
		vim.opt_local.smartindent = false
		vim.opt_local.cindent = false
	end,
})
