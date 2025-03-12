-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
vim.o.langmap =
	"ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"

vim.o.spell = true
vim.o.spelllang = "ru_ru,en_us"
vim.o.relativenumber = true
vim.o.linebreak = true
vim.o.conceallevel = 1
vim.o.spellfile = "/home/q/.config/nvim/spell/custom.utf-8.add"

local home_dir = "/home/q"
local node_bin = "/.nvm/versions/node/v20.18.1/bin"

vim.g.node_host_prog = home_dir .. node_bin .. "/node"
vim.cmd("let $PATH = '" .. home_dir .. node_bin .. ":' . $PATH")
vim.o.keymap = "russian-jcukenwin"
vim.o.iminsert = 0
vim.o.imsearch = 0

vim.g.neovide_position_animation_length = 0
vim.g.neovide_cursor_animation_length = 0.00
vim.g.neovide_cursor_trail_size = 0
vim.g.neovide_cursor_animate_in_insert_mode = false
vim.g.neovide_cursor_animate_command_line = false
vim.g.neovide_scroll_animation_far_lines = 0
vim.g.neovide_scroll_animation_length = 0.00
vim.o.guifont = "Source Code Pro:h12"
