local wezterm = require("wezterm")

local config = {}
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config = {
	hide_mouse_cursor_when_typing = false,
	color_scheme = "Rasi (terminal.sexy)",
	font = wezterm.font_with_fallback({
		"FiraCode Nerd Font Mono Med",
		"JetBrains Mono",
	}),
	window_decorations = "RESIZE",
	initial_rows = 42,
	initial_cols = 140,
	hide_tab_bar_if_only_one_tab = true,
	default_prog = { "fish" },
}

return config
