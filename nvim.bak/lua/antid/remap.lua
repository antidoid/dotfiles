local nnoremap = require('antid.keymap').nnoremap
local inoremap = require("antid.keymap").inoremap

-- Normal Mode Remaps
nnoremap("<leader>e", ":NvimTreeToggle<cr>")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")
nnoremap("U", "<C-r>")
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-l>", "<C-w>l")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<Tab>", ":BufferLineCycleNext<cr>")
nnoremap("<S-Tab>", ":BufferLineCyclePrev<cr>")

-- Insert mode Remaps
inoremap("jk", "<esc>")
