local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>:w<CR>", opts)
