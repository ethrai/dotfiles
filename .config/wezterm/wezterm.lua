local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Macchiato"

config.window_padding = {
	top = 0,
	right = 0,
	left = 0,
	bottom = 0,
}

config.font = wezterm.font({
	family = "Iosevka Nerd Font",
	italic = false,
})
config.font_size = 14

-- and finally, return the configuration to wezterm
return config
