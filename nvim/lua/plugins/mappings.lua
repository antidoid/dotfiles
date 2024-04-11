return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
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
      },
    },
  },
}
