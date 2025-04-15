vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.mouse = "a"
vim.opt.rnu = true
vim.opt.clipboard = "unnamedplus"
vim.opt.ttyfast = true
vim.cmd("filetype plugin indent on")
vim.cmd("syntax on")
vim.cmd("filetype plugin on")

vim.keymap.set("n", "<Leader>lf", vim.cmd.Ex)
vim.keymap.set("n", "<A-h>", "<Cmd>BufferPrevious<CR>")
vim.keymap.set("n", "<A-l>", "<Cmd>BufferNext<CR>")
vim.keymap.set("n", "<A-c>", "<Cmd>BufferClose<CR>")
