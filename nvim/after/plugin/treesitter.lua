require('nvim-treesitter.configs').setup {
    -- Add languages to be installed here that you want installed for treesitter
    ensure_installed = { 'lua', 'help', 'typescript', 'javascript', 'rust', 'go', 'python', 'java', 'c' },
    sync_install = false,
    auto_install = true,

    highlight = { 
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },
}
