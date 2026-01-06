-- Syntax: vim.keymap.set("mode", "keys", "action")

-- 1. Fast Save (Ctrl + s)
-- Note: 'n' = Normal Mode, 'i' = Insert Mode
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>")

-- 2. "jk" to Escape (The God Tier shortcut)
-- Instead of reaching for the Esc key, just type 'jk' fast.
vim.keymap.set("i", "jk", "<Esc>")

-- 3. Clear search highlighting with Esc
-- When you search (/), the yellow highlight stays. This makes Esc clear it.
vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>")

-- 4. Move lines up and down using Alt+j / Alt+k (Like VS Code)
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")
-- Save and Quit with ??
vim.keymap.set("n", ">>", ":wq<CR>")
