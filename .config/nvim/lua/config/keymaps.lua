-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.del("n", "<leader> ")
vim.keymap.set("n", "<leader><leader>q", "<cmd>q<cr>", { desc = "Quit neovim" })
vim.keymap.set("n", "<leader><leader>xq", "<cmd>q!<cr>", { desc = "Froce Quit neovim" })
vim.keymap.set("n", "<leader>1", "<cmd>bNext<cr>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>2", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>ow", "<cmd>on<cr>", { desc = "Close all other windows" })
vim.keymap.set("n", "<leader>xbd", "<cmd>bd!<cr>", { desc = "Force close buffer" })

vim.keymap.set("n", "<leader>3", "#", { desc = "Find match (reverse)" })
vim.keymap.set("n", "<leader>4", "$", { desc = "Go to end of line" })
vim.keymap.set("n", "<leader>5", "%", { desc = "Go to matching brackets" })
vim.keymap.set("n", "<leader>6", "^", { desc = "Go to start of line" })
vim.keymap.set("n", "<leader>8", "*", { desc = "Find match" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Center next match" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Center next match (reverse)" })
vim.keymap.set("n", "<leader>k", "<cmd>m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("n", "<leader>j", "<cmd>m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("v", "<leader>k", "<cmd>m '<-2<CR>gv=gv", { desc = "Move line up" })
vim.keymap.set("v", "<leader>j", "<cmd>m '>+1<CR>gv=gv", { desc = "Move line down" })
