print("\n==============================")
print("[dimensions] starting...")
print("==============================\n")

-- awesome_mode: api-level=4:screen=on
-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")
-- Widget and layout library
local wibox = require("wibox")
-- Theme handling library
local beautiful = require("beautiful")
-- Notification library
local naughty = require("naughty")
-- Declarative object management
local ruled = require("ruled")
local menubar = require("menubar")
local hotkeys_popup = require("awful.hotkeys_popup")
-- Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
require("awful.hotkeys_popup.keys")
local xresources = require("beautiful.xresources")
local apply_dpi = xresources.apply_dpi
local xrdb = xresources.get_current_theme()

local theme = require("theme")
beautiful.init(theme)

-- require all signal scripts first
require("theme.wallpaper.signal")

-- require other files
require("theme.wallpaper.set_wallpaper")
