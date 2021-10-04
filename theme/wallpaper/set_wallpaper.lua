-- this script will provide wallpaper when awesomewm ask for it

screen.connect_signal(
    "request::wallpaper",
    function(s)
        screen.emit_signal("wallpaper::onecolor", beautiful.xbg)
    end
)

awful.screen.connect_for_each_screen(
    function(s)
        -- screen.emit_signal("wallpaper::onecolor",beautiful.normal_cyan)
        -- screen.emit_signal("wallpaper::centered", beautiful.wallpaper,beautiful.bright_white)
        -- screen.emit_signal("wallpaper::tiled", beautiful.wallpaper)
        screen.emit_signal("wallpaper::max", beautiful.wallpaper)
        -- screen.emit_signal("wallpaper::fit", beautiful.wallpaper,beautiful.bright_white)
    end
)

-- Re-set wallpaper when a screen's geometry changes (e.g. different resolution)
screen.connect_signal(
    "property::geometry",
    function(s)
        screen.emit_signal("wallpaper::max", beautiful.wallpaper)
    end
)
