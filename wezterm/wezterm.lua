-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config = {
	color_scheme = "Gruvbox dark, soft (base16)",
	window_background_opacity = 0.9,
	font = wezterm.font_with_fallback({
		"Input",
		{ family = "Symbols Nerd Font Mono", scale = 0.55 },
	}),
	window_decorations = "RESIZE",
	initial_rows = 31,
	initial_cols = 131,
	hide_tab_bar_if_only_one_tab = true,
	default_prog = { "fish" },
}

-- and finally, return the configuration to wezterm
return config
