local nnoremap = require('antid.keymap').nnoremap
local inoremap = require("antid.keymap").inoremap

-- Normal Mode Remaps
nnoremap("<leader>pv", "<cmd>Ex<CR>")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")
nnoremap("U", "<C-r>")

-- Insert mode Remaps
inoremap("jk", "<esc>")
