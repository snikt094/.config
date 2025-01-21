vim.g.mapleader = " "
vim.g.localleader = "\\"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set('i', "<C-l>", '<c-g>u<Esc>[s1z=`]a<c-g>u') --Correct last mistake
vim.keymap.set("n", "<leader>s", vim.cmd.w) --Save file 
vim.keymap.set("n", "<leader>a", vim.cmd.wq) --Save and quite file 
--vim.keymap.set("n", "<leader>q", vim.cmd.q!) --Quite file without saving 

-- Move highlighted text 
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("x", "<leader>p", [["_dP]])
