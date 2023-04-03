return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'                                                    -- Package manager

    use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})                     -- Treesitter

    use 'nvim-lualine/lualine.nvim'                                                 -- Fancier statusline  
    use 'lukas-reineke/indent-blankline.nvim'                                       -- Add indentation guides even on blank lines
    use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } } -- Fuzzy Finder (files, lsp, etc)
    -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable "make" == 1 }

    use {"akinsho/toggleterm.nvim", tag = '*'}                                      -- Terminal to execute codes
    use 'windwp/nvim-autopairs'                                                     -- Automatic pairing of brackets
    use {"rose-pine/neovim", as = "rose-pine"}                                      -- Theme
    use 'numToStr/Comment.nvim'                                                     -- "gc" to comment visual regions/lines
    use "ThePrimeagen/vim-be-good"
    use { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons'} }  -- Files view 

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }

    use { 'akinsho/bufferline.nvim', tag = "v3.*" }         -- Tab Support
end)
