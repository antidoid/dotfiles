require("bufferline").setup {
    options = {
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                separator = true -- use a "true" to enable the default, or set your own character
            }
        },
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        },
        buffer_close_icon = '',
        separator_style = "slope",

        -- Need to figure out highlights
        -- highlights = {
        --
        -- }
    }
}
