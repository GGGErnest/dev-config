local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- use jk to exit insert mode
--keymap.set("i", "jk", "<ESC>", opts)
keymap.set("n", "<C-S-s>", ":wall<CR>", opts)
