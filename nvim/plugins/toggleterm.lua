function _G.set_terminal_keymaps()
  local opts = { noremap = true }
  vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
end

vim.cmd "autocmd! TermOpen term://* lua set_terminal_keymaps()"

return {
  "akinsho/toggleterm.nvim",
  opts = {
    shell = "/usr/bin/fish",
  },
}
