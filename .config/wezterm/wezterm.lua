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

-- For example, changing the color scheme:
config.color_scheme = "rose-pine"

-- Set background to same color as neovim
config.colors = {
	-- cursor_bg = "#ae81e3", --RosePine
	cursor_bg = "#5bb76e", --RosePine
}

config.window_background_opacity = 0.85
config.enable_wayland = false

config.colors.background = "#111111"
config.window_close_confirmation = "NeverPrompt"

config.default_cursor_style = "SteadyBlock"

config.hide_tab_bar_if_only_one_tab = true
config.freetype_load_flags = "NO_HINTING"
config.font = wezterm.font_with_fallback({
	{ family = "JetBrainsMono", weight = "Medium" },
	"nonicons",
})
config.font_size = 12.5

-- default is true, has more "native" look
config.use_fancy_tab_bar = false

-- I don't like putting anything at the ege if I can help it.
config.enable_scroll_bar = false
config.window_padding = {
	left = 5,
	right = 0,
	top = 0,
	bottom = 0,
}

config.tab_bar_at_bottom = true
config.freetype_load_target = "HorizontalLcd"

-- and finally, return the configuration to wezterm
return config
