local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Function to create a smooth scrolling effect
local function smooth_scroll(lines, key)
  return string.format(
    [[<Cmd>lua for _ = 1, %d do vim.cmd('normal! %s') vim.cmd('redraw') vim.loop.sleep(10) end<CR>]],
    lines,
    key
  )
end

-- use jk to exit insert mode
--keymap.set("i", "jk", "<ESC>", opts)
keymap.set("n", "<C-S-s>", ":wall<CR>", opts)

-- remove ";" from the maps
vim.keymap.del({ "n", "v", "o" }, ";")

-- Set up the keymaps with arrow keys
vim.keymap.set("n", "<Down>", smooth_scroll(3, "<C-e>"), { silent = true })
vim.keymap.set("n", "<Up>", smooth_scroll(3, "<C-y>"), { silent = true })

-- Optional: Set up keymaps for faster scrolling
vim.keymap.set("n", "<S-Down>", smooth_scroll(10, "<C-e>"), { silent = true })
vim.keymap.set("n", "<S-Up>", smooth_scroll(10, "<C-y>"), { silent = true })
