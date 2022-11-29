return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'                                                    -- Package manager
  use 'tpope/vim-fugitive'                                                        -- Git commands in nvim
  use 'tpope/vim-rhubarb'                                                         -- Fugitive-companion to interact with github
  use 'numToStr/Comment.nvim'                                                     -- "gc" to comment visual regions/lines
  use 'nvim-treesitter/nvim-treesitter'                                           -- Highlight, edit, and navigate code
  use 'nvim-treesitter/nvim-treesitter-textobjects'                               -- Additional textobjects for treesitter
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'neovim/nvim-lspconfig'                                                     -- Collection of configurations for built-in LSP client
  use 'williamboman/nvim-lsp-installer'                                           -- Automatically install language servers to stdpath
  use { 'hrsh7th/nvim-cmp', requires = { 'hrsh7th/cmp-nvim-lsp' } }               -- Autocompletion
  use { 'L3MON4D3/LuaSnip', requires = { 'saadparwaiz1/cmp_luasnip' }, tag = "v<CurrentMajor>.*" } -- Snippet Engine and Snippet Expansion
  use 'marko-cerovac/material.nvim'
  use 'nvim-lualine/lualine.nvim'                                                 -- Fancier statusline  
  use 'lukas-reineke/indent-blankline.nvim'                                       -- Add indentation guides even on blank lines
  use 'tpope/vim-sleuth'                                                          -- Detect tabstop and shiftwidth automatically
  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } } -- Fuzzy Finder (files, lsp, etc)
  use {"akinsho/toggleterm.nvim", tag = '*'}
  use 'windwp/nvim-autopairs'                                                     -- Automatic pairing of brackets
  -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable "make" == 1 }
  use "ThePrimeagen/vim-be-good"
  use {"rose-pine/neovim", as = "rose-pine"}
end)
