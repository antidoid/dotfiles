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
	hide_mouse_cursor_when_typing = false,
	color_scheme = "Material Darker (base16)",
	window_background_opacity = 0.90,
	font = wezterm.font_with_fallback({
		"Input",
		{ family = "Symbols Nerd Font Mono", scale = 0.55 },
	}),
	window_decorations = "RESIZE",
	initial_rows = 33,
	initial_cols = 133,
	hide_tab_bar_if_only_one_tab = true,
	default_prog = { "fish" },
	keys = {
		{
			key = "|",
			mods = "CTRL|SHIFT",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "\\",
			mods = "CTRL",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "h",
			mods = "CTRL|SHIFT",
			action = wezterm.action.ActivatePaneDirection("Left"),
		},
		{
			key = "l",
			mods = "CTRL|SHIFT",
			action = wezterm.action.ActivatePaneDirection("Right"),
		},
		{
			key = "k",
			mods = "CTRL|SHIFT",
			action = wezterm.action.ActivatePaneDirection("Up"),
		},
		{
			key = "j",
			mods = "CTRL|SHIFT",
			action = wezterm.action.ActivatePaneDirection("Down"),
		},
		{
			key = "h",
			mods = "CTRL|ALT|SHIFT",
			action = wezterm.action.AdjustPaneSize({ "Left", 5 }),
		},
		{
			key = "j",
			mods = "CTRL|ALT|SHIFT",
			action = wezterm.action.AdjustPaneSize({ "Down", 5 }),
		},
		{
			key = "k",
			mods = "CTRL|ALT|SHIFT",
			action = wezterm.action.AdjustPaneSize({ "Up", 5 }),
		},
		{
			key = "l",
			mods = "CTRL|ALT|SHIFT",
			action = wezterm.action.AdjustPaneSize({ "Right", 5 }),
		},
	},
}

-- and finally, return the configuration to wezterm
return config
