-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
local opts = { noremap = true, silent = true }

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>:w<CR>", opts)

-- Resize with arrows
keymap.set("n", "<S-Up>", ":resize -2<CR>", opts)
keymap.set("n", "<S-Down>", ":resize +2<CR>", opts)
keymap.set("n", "<S-Left>", ":vertical resize -2<CR>", opts)
keymap.set("n", "<S-Right>", ":vertical resize +2<CR>", opts)

-- Toggle File Explorer
keymap.set("n", "<leader>e", ":NvimTreeToggle <CR>", opts)

-- Save keymaps
keymap.set("n", "<leader>s", ":w<CR>", opts)

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

--increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Buffers keymaps
keymap.set("n", "<leader>nt", ":bnext<CR>", opts)
keymap.set("n", "<leader>pt", ":bprevious<CR>", opts)
keymap.set("n", "<C-w>", ":bd<CR>", opts)
keymap.set("n", "<C-b>", ":BufferLinePick<CR>", opts)
keymap.set("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", opts)
keymap.set("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", opts)
keymap.set("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", opts)
keymap.set("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", opts)
keymap.set("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", opts)
keymap.set("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", opts)
keymap.set("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", opts)
keymap.set("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>", opts)
keymap.set("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>", opts)

-- Better vertical movement
keymap.set("n", "<C-d>", "<C-d>zz", opts)
keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- Move text u and down in Normal mode
keymap.set("n", "∆", ":m .+1<CR>==", opts)
keymap.set("n", "˚", ":m .-2<CR>==", opts)

-- Move text u and down in Visual mode
keymap.set("v", "∆", ":m .+1<CR>==", opts)
keymap.set("v", "˚", ":m .-2<CR>==", opts)

-- Move text u and down in Visual Block mode
keymap.set("x", "∆", ":m '>+1<CR>gv=gv", opts)
keymap.set("x", "˚", ":m '<-2<CR>gv=gv", opts)

-- Duplicate a block of code in visual mode
keymap.set("v", "<S-d>", ":'<,'>t'><CR>", opts)

-- Add ; at the end of the line with <Opt-;>k
keymap.set("n", "<leader>;", "A;<ESC>", opts)
