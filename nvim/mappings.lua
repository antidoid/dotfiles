-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },

    -- Custom remaps
    ["<C-d>"] = { "<C-d>zz", desc = "Page down and centeres the view" },
    ["<C-u>"] = { "<C-u>zz", desc = "Page up and centeres the view" },
    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv" },

    -- disable <leader>b mappings
    ["<leader>b"] = false,
    ["<leader>bb"] = false,
    ["<leader>bd"] = false,
    ["<leader>b\\"] = false,
    ["<leader>b|"] = false,

    ["<leader>e"] = { "<cmd>Ex<cr><cr>", desc = "Open Netrw file explorer" },
  },
  x = {
    ["<leader>p"] = { '"_dP', desc = "Keep the content of current paste register after pasting over" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
