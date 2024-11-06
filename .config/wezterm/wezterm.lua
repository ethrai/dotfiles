-- Pull in the wezterm API
local wezterm = require("wezterm")

local mux = wezterm.mux

-- This will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font({
	family = "monospace",
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
})

config.font_size = 14

config.keys = {
	{
		key = "r",
		mods = "CMD|SHIFT",
		action = wezterm.action.ReloadConfiguration,
	},
}

wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	-- Create a split occupying the right 1/3 of the screen
	pane:split({ size = 0.3 })
	-- Create another split in the right of the remaining 2/3
	-- of the space; the resultant split is in the middle
	-- 1/3 of the display and has the focus.
	pane:split({ size = 0.5 })
end)

-- This is where you actually apply your config choices

-- and finally, return the configuration to wezterm
return config
