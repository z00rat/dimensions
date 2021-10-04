print("[dimensions] starting...")
-- awesome_mode: api-level=4:screen=on
-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

-- Standard awesome library
gears = require("gears")
awful = require("awful")
require("awful.autofocus")
-- Widget and layout library
wibox = require("wibox")
-- Theme handling library
beautiful = require("beautiful")
-- Notification library
naughty = require("naughty")
-- Declarative object management
ruled = require("ruled")
menubar = require("menubar")
hotkeys_popup = require("awful.hotkeys_popup")
-- Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
require("awful.hotkeys_popup.keys")
xresources = require("beautiful.xresources")
apply_dpi = xresources.apply_dpi
xrdb = xresources.get_current_theme()

theme = require("theme")
beautiful.init(theme)

-- require all signal scripts first
require("theme.wallpaper.signal")

-- require other files
require("theme.wallpaper.set_wallpaper")
