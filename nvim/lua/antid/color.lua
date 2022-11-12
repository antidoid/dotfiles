require('material').setup({
	disable = {
		background = true,
	},
})

-- Set colorscheme
vim.o.termguicolors = true
vim.g.material_style = "deep ocean"
vim.cmd 'colorscheme material'
