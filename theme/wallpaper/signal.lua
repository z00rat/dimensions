-- Standard awesome library
local gears = require("gears")

-- those signals will set wallpaper in different method

screen.connect_signal(
    "wallpaper::onecolor",
    function(color)
        gears.wallpaper.set(color, s, true)
    end
)

screen.connect_signal(
    "wallpaper::centered",
    function(wallpaper, color)
        -- If wallpaper is a function, call it with the screen
        if type(wallpaper) == "function" then
            wallpaper = wallpaper(s)
        end

        gears.wallpaper.centered(wallpaper, s, color, 1)
    end
)

screen.connect_signal(
    "wallpaper::tiled",
    function(wallpaper)
        -- If wallpaper is a function, call it with the screen
        if type(wallpaper) == "function" then
            wallpaper = wallpaper(s)
        end

        gears.wallpaper.tiled(wallpaper, s)
    end
)

screen.connect_signal(
    "wallpaper::max",
    function(wallpaper)
        -- If wallpaper is a function, call it with the screen
        if type(wallpaper) == "function" then
            wallpaper = wallpaper(s)
        end

        gears.wallpaper.maximized(wallpaper, s, false)
    end
)

screen.connect_signal(
    "wallpaper::fit",
    function(wallpaper, color)
        -- If wallpaper is a function, call it with the screen
        if type(wallpaper) == "function" then
            wallpaper = wallpaper(s)
        end

        gears.wallpaper.fit(wallpaper, s, color)
    end
)
