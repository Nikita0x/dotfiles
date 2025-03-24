-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'
config.color_scheme = 'Lab Fox'
config.enable_scroll_bar = true


keys = {
    -- ALT+number to activate that tab
    { key = "1", mods = "ALT", action = wezterm.action.ActivateTab(0) },
    { key = "2", mods = "ALT", action = wezterm.action.ActivateTab(1) },
    { key = "3", mods = "ALT", action = wezterm.action.ActivateTab(2) },
    { key = "4", mods = "ALT", action = wezterm.action.ActivateTab(3) },
    { key = "5", mods = "ALT", action = wezterm.action.ActivateTab(4) },
    { key = "6", mods = "ALT", action = wezterm.action.ActivateTab(5) },
    { key = "7", mods = "ALT", action = wezterm.action.ActivateTab(6) },
    { key = "8", mods = "ALT", action = wezterm.action.ActivateTab(7) },
    { key = "9", mods = "ALT", action = wezterm.action.ActivateTab(8) },
    
    -- ALT+arrows to navigate between tabs
    { key = "LeftArrow", mods = "ALT", action = wezterm.action.ActivateTabRelative(-1) },
    { key = "RightArrow", mods = "ALT", action = wezterm.action.ActivateTabRelative(1) },
  }

  config.disable_default_key_bindings = true
-- and finally, return the configuration to wezterm
return config

