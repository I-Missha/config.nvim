vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- Temporarily map <C-,> to something simple (e.g., echo)
vim.keymap.set("n", "<C-,>", "<cmd>echo 'Ctrl+, works!'<CR>")
