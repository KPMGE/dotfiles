function setup_colorscheme() 
	color = color or "gruvbox-material"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

-------------- GRUVBOX MATERIAL -------------
-- background intensity
vim.g.gruvbox_material_background = 'hard'
-- mark the current work in bold
vim.g.gruvbox_material_current_word = 'bold'
-- enable italic
vim.g.gruvbox_material_enable_italic = true
-- enable bold on selection
vim.g.gruvbox_material_enable_bold = true
-- set transparent background
vim.g.gruvbox_material_transparent_background = 1
-- underline on errors
vim.g.gruvbox_material_diagnostic_text_highlight = false
vim.g.gruvbox_material_ui_contrast = 'high'
vim.g.gruvbox_material_diagnostic_line_highlight = 1

setup_colorscheme()
