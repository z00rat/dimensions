-- https://awesomewm.org/apidoc/documentation/06-appearance.md.html

-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
local xresources = require("beautiful.xresources")
local apply_dpi   = xresources.apply_dpi
local xrdb = xresources.get_current_theme()

--my color
--https://lospec.com/palette-list/1bit-monitor-glow
local onebit_monitor_glow_black = "#222323"
local onebit_monitor_glow_white = "#f0f6f0"
--https://lospec.com/palette-list/christmas-time


awful.util.shell = "/bin/bash"


local theme = {}



-- mine variables
theme.userdir   = ("/home/"..os.getenv("USER").."/") or "/home/hz/"
theme.configdir = theme.userdir..".config/awesome/"
theme.terminal  = "alacritty"
-- theme.browser  = "Firefox"
theme.editor    = os.getenv("EDITOR") or "nano"
-- theme.hostname  = "arch-linux"
theme.username  = os.getenv("USERNAME") or "NO_USER"
theme.apply_dpi = apply_dpi

theme.modkey    = "Mod4"
theme.altkey    = "Mod1"
theme.ctrlkey   = "Control"
theme.shiftkey  = "Shift"
theme.nightlight = 6500

theme.font_name = "Hack".." "
theme.font_size = 7 --9

theme.default_layout = awful.layout.suit.tile


theme.distro_pic = (theme.configdir.."icons/archlinux.png")
-- theme.distro_pic = (theme.configdir.."icons/manjaro.png")

-- theme.clock_font = "Hack Bold 30"
-- theme.clock_font = "Pixel LCD7 60"
-- theme.clock_font = "Digiffiti 100"
-- theme.clock_font = "Wide Pixel-7 60"
-- theme.clock_font     = "Pixel-art Struct 64"
-- theme.clock_font = "04b 50"
-- theme.clock_font     = "BitOut 30"
-- theme.clock_font = "tight pixel 100"
-- theme.clock_font = "Vermin Vibes 1989 100"
-- theme.clock_font = "8BIT WONDER 50"
-- theme.clock_font = "Virus_01 70"
-- theme.clock_font = "Minecraftia 50"
-- theme.clock_font = "Fipps 40"
theme.clock_font = "alarm clock 70" --80
-- theme.clock_font = "Atomic Clock Radio 70"

-- theme.number_font = "8BIT WONDER 30"
theme.number_font = "tight pixel 40" --50


-- xresources colors
theme.xfg                                       = xrdb.foreground 
theme.xbg                                       = xrdb.background 
theme.xbgdark                                   = xrdb.bgdark 
theme.xbglight                                  = xrdb.bglight 
theme.xcolor0                                   = xrdb.color0 
theme.xcolor8                                   = xrdb.color8 
theme.xcolor1                                   = xrdb.color1
theme.xcolor9                                   = xrdb.color9 
theme.xcolor2                                   = xrdb.color2 
theme.xcolor10                                  = xrdb.color10
theme.xcolor3                                   = xrdb.color3  
theme.xcolor11                                  = xrdb.color11 
theme.xcolor4                                   = xrdb.color4  
theme.xcolor12                                  = xrdb.color12 
theme.xcolor5                                   = xrdb.color5 
theme.xcolor13                                  = xrdb.color13 
theme.xcolor6                                   = xrdb.color6 
theme.xcolor14                                  = xrdb.color14
theme.xcolor7                                   = xrdb.color7
theme.xcolor15                                  = xrdb.color15

-- xresources colors
theme.fg_white                                  = xrdb.foreground 
theme.bg_black                                  = xrdb.background 
-- theme.xbgdark                                   = xrdb.bgdark 
-- theme.xbglight                                  = xrdb.bglight 
theme.normal_black                              = xrdb.color0 
theme.bright_black                              = xrdb.color8 
theme.normal_red                                = xrdb.color1
theme.bright_red                                = xrdb.color9 
theme.normal_green                              = xrdb.color2 
theme.bright_green                              = xrdb.color10
theme.normal_yellow                             = xrdb.color3  
theme.bright_yellow                             = xrdb.color11 
theme.normal_blue                               = xrdb.color4  
theme.bright_blue                               = xrdb.color12 
theme.normal_magenta                            = xrdb.color5 
theme.bright_magenta                            = xrdb.color13 
theme.normal_cyan                               = xrdb.color6 
theme.bright_cyan                               = xrdb.color14
theme.normal_white                              = xrdb.color7
theme.bright_white                              = xrdb.color15



-- Default variables
theme.bg_normal = theme.bg_black
theme.fg_normal = theme.fg_white 
theme.useless_gap = apply_dpi(3)
theme.font = (theme.font_name..theme.font_size)
theme.bg_focus = theme.bright_black
-- theme.bg_urgent = nil
-- theme.bg_minimize = nil
theme.bg_systray = theme.bg_normal
theme.fg_focus = theme.bright_white
-- theme.fg_urgent = nil
-- theme.fg_minimize = nil
theme.border_width = apply_dpi(2)
theme.border_color = theme.bright_green
theme.wallpaper = (theme.userdir.."Pictures/wallpaper/view.png")
theme.bg_systray = theme.fg_normal
-- theme.border_color_marked = nil
-- theme.border_color_floating = nil
-- theme.border_color_maximized = nil
-- theme.border_color_fullscreen = nil
theme.border_color_active = theme.normal_red
-- theme.border_color_normal = nil
-- theme.border_color_urgent = nil
theme.border_color_new = theme.bright_cyan
-- theme.border_color_floating_active = nil
-- theme.border_color_floating_normal = nil
-- theme.border_color_floating_urgent = nil
-- theme.border_color_floating_new = nil
-- theme.border_color_maximized_active = nil
-- theme.border_color_maximized_normal = nil
-- theme.border_color_maximized_urgent = nil
-- theme.border_color_maximized_new = nil
-- theme.border_color_fullscreen_active = nil
-- theme.border_color_fullscreen_normal = nil
-- theme.border_color_fullscreen_urgent = nil
-- theme.border_color_fullscreen_new = nil
-- theme.border_width_floating = nil
-- theme.border_width_maximized = nil
-- theme.border_width_normal = nil
-- theme.border_width_active = nil
-- theme.border_width_urgent = nil
-- theme.border_width_new = nil
-- theme.border_width_floating_normal = nil
-- theme.border_width_floating_active = nil
-- theme.border_width_floating_urgent = nil
-- theme.border_width_floating_new = nil
-- theme.border_width_maximized_normal = nil
-- theme.border_width_maximized_active = nil
-- theme.border_width_maximized_urgent = nil
-- theme.border_width_maximized_new = nil
-- theme.border_width_fullscreen_normal = nil
-- theme.border_width_fullscreen_active = nil
-- theme.border_width_fullscreen_urgent = nil
-- theme.border_width_fullscreen_new = nil



-- theme.wallpapers.
theme.wallpapers = {}
theme.wallpapers.one = ""
theme.wallpapers.one = ""
theme.wallpapers.two = ""
theme.wallpapers.three = ""
theme.wallpapers.four = ""
theme.wallpapers.five = ""
theme.wallpapers.six = ""
theme.wallpapers.seven = ""
theme.wallpapers.eight = ""
theme.wallpapers.nine = ""
theme.wallpapers.ten = ""



-- arcchart
-- theme.arcchart_border_color = nil
-- theme.arcchart_color = nil
-- theme.arcchart_border_width = nil
-- theme.arcchart_paddings = nil
-- theme.arcchart_thickness = nil



-- awesome
-- theme.awesome_icon = (theme.userdir..".config/awesome/icons/awesomewm_black.png")
theme.awesome_icon = (theme.configdir.."icons/awesomewmw.png")



-- calendar
-- theme.calendar_style = nil
-- theme.calendar_font = nil
-- theme.calendar_spacing = nil
-- theme.calendar_week_numbers = nil
-- theme.calendar_start_sunday = nil
-- theme.calendar_long_weekdays = nil



-- checkbox
-- theme.checkbox_border_width = nil
-- theme.checkbox_bg = nil
-- theme.checkbox_border_color = nil
-- theme.checkbox_check_border_color = nil
-- theme.checkbox_check_border_width = nil
-- theme.checkbox_check_color = nil
-- theme.checkbox_shape = nil
-- theme.checkbox_check_shape = nil
-- theme.checkbox_paddings = nil
-- theme.checkbox_color = nil



-- column
-- theme.column_count = nil



-- cursor
-- theme.cursor_mouse_resize = nil
-- theme.cursor_mouse_move = nil



-- enable
-- theme.enable_spawn_cursor = nil



-- fullscreen
-- theme.fullscreen_hide_border = nil



-- gap
-- theme.gap_single_client = nil



-- graph
-- theme.graph_bg = nil
-- theme.graph_fg = nil
-- theme.graph_border_color = nil



-- hotkeys
theme.hotkeys_bg = theme.xbg
theme.hotkeys_fg = theme.xfg
theme.hotkeys_border_width = apply_dpi(5)
theme.hotkeys_border_color = theme.bright_cyan
theme.hotkeys_shape = gears.shape.rounded_rect
theme.hotkeys_modifiers_fg = theme.normal_cyan
-- theme.hotkeys_label_bg = theme.normal_black
-- theme.hotkeys_label_fg = theme.normal_white
theme.hotkeys_font = "noto 10"
theme.hotkeys_description_font = "noto 9"
theme.hotkeys_group_margin = apply_dpi(55)



-- icon
theme.icon_theme = "/usr/share/icons/Papirus"



-- layout
theme.layout_cornernw   = theme.configdir.."icons/cornernw.png"
theme.layout_cornerne   = theme.configdir.."icons/cornerne.png"
theme.layout_cornersw   = theme.configdir.."icons/cornersw.png"
theme.layout_cornerse   = theme.configdir.."icons/cornerse.png"
theme.layout_fairh      = theme.configdir.."icons/fairh.png"
theme.layout_fairv      = theme.configdir.."icons/fairv.png"
theme.layout_floating   = theme.configdir.."icons/floating.png"
theme.layout_magnifier  = theme.configdir.."icons/magnifier.png"
theme.layout_max        = theme.configdir.."icons/max.png"
theme.layout_fullscreen = theme.configdir.."icons/fullscreen.png"
theme.layout_spiral     = theme.configdir.."icons/spiral.png"
theme.layout_dwindle    = theme.configdir.."icons/dwindle.png"
theme.layout_tile       = theme.configdir.."icons/tile.png"
theme.layout_tiletop    = theme.configdir.."icons/tiletop.png"
theme.layout_tilebottom = theme.configdir.."icons/tilebottom.png"
theme.layout_tileleft   = theme.configdir.."icons/tileleft.png"



-- layoutlist
-- theme.layoutlist_fg_normal = nil
-- theme.layoutlist_bg_normal = nil
-- theme.layoutlist_fg_selected = nil
-- theme.layoutlist_bg_selected = nil
-- theme.layoutlist_disable_icon = nil
-- theme.layoutlist_disable_name = nil
-- theme.layoutlist_font = nil
-- theme.layoutlist_align = nil
-- theme.layoutlist_font_selected = nil
-- theme.layoutlist_spacing = nil
-- theme.layoutlist_shape = nil
-- theme.layoutlist_shape_border_width = nil
-- theme.layoutlist_shape_border_color = nil
-- theme.layoutlist_shape_selected = nil
-- theme.layoutlist_shape_border_width_selected = nil
-- theme.layoutlist_shape_border_color_selected = nil



-- master
-- theme.master_width_factor = nil
-- theme.master_fill_policy = nil
-- theme.master_count = nil



-- maximized
-- theme.maximized_honor_padding = nil
-- theme.maximized_hide_border = nil



-- menu
-- theme.menu_submenu_icon = nil
-- theme.menu_font = nil
-- theme.menu_height = nil
-- theme.menu_width = nil
-- theme.menu_border_color = nil
-- theme.menu_border_width = nil
-- theme.menu_fg_focus = nil
-- theme.menu_bg_focus = nil
-- theme.menu_fg_normal = nil
-- theme.menu_bg_normal = nil
-- theme.menu_submenu = nil



-- menubar
-- theme.menubar_fg_normal = nil
-- theme.menubar_bg_normal = nil
-- theme.menubar_border_width = nil
-- theme.menubar_border_color = nil
-- theme.menubar_fg_focus = nil
-- theme.menubar_bg_focus = nil



-- notification
-- theme.notification_max_width = apply_dpi(500)
theme.notification_position = "bottom_right"
-- theme.notification_action_underline_normal = nil
-- theme.notification_action_underline_selected = nil
-- theme.notification_action_icon_only = 400
-- theme.notification_action_label_only = nil
-- theme.notification_action_shape_normal = nil
-- theme.notification_action_shape_selected = nil
-- theme.notification_action_shape_border_color_normal = nil
-- theme.notification_action_shape_border_color_selected = nil
-- theme.notification_action_shape_border_width_normal = nil
-- theme.notification_action_shape_border_width_selected = nil
-- theme.notification_action_icon_size_normal = 200
-- theme.notification_action_icon_size_selected = nil
theme.notification_action_bg_normal = theme.normal_black --onebit_monitor_glow_black
-- theme.notification_action_bg_selected = nil
theme.notification_action_fg_normal = theme.normal_white --onebit_monitor_glow_white
-- theme.notification_action_fg_selected = nil
-- theme.notification_action_bgimage_normal = nil
-- theme.notification_action_bgimage_selected = nil
-- theme.notification_shape_normal = nil
-- theme.notification_shape_selected = nil
-- theme.notification_shape_border_color_normal = nil
-- theme.notification_shape_border_color_selected = nil
-- theme.notification_shape_border_width_normal = nil
-- theme.notification_shape_border_width_selected = nil
theme.notification_icon_size_normal = apply_dpi(200)
theme.notification_icon_size_selected = apply_dpi(200)
theme.notification_bg_normal = theme.normal_black --onebit_monitor_glow_black
-- theme.notification_bg_selected = nil
theme.notification_fg_normal = theme.normal_white --onebit_monitor_glow_white
-- theme.notification_fg_selected = nil
-- theme.notification_bgimage_normal = nil
-- theme.notification_bgimage_selected = nil
theme.notification_font = theme.font_name.."9"
theme.notification_bg = theme.normal_black --onebit_monitor_glow_black
theme.notification_fg = theme.normal_white --onebit_monitor_glow_white
theme.notification_border_width = apply_dpi(2)
theme.notification_border_color = theme.normal_red --onebit_monitor_glow_white
theme.notification_shape = gears.shape.rect
theme.notification_opacity = 1.0
theme.notification_margin = apply_dpi(2)
theme.notification_width = apply_dpi(500)
theme.notification_height = apply_dpi(80)
theme.notification_spacing = apply_dpi(4)
-- theme.notification_icon_resize_strategy = nil



-- opacity 
-- theme.opacity_normal = nil
-- theme.opacity_active = nil
-- theme.opacity_urgent = nil
-- theme.opacity_new = nil
-- theme.opacity_floating_normal = nil
-- theme.opacity_floating_active = nil
-- theme.opacity_floating_urgent = nil
-- theme.opacity_floating_new = nil
-- theme.opacity_maximized_normal = nil
-- theme.opacity_maximized_active = nil
-- theme.opacity_maximized_urgent = nil
-- theme.opacity_maximized_new = nil
-- theme.opacity_fullscreen_normal = nil
-- theme.opacity_fullscreen_active = nil
-- theme.opacity_fullscreen_urgent = nil
-- theme.opacity_fullscreen_new = nil



-- piechart
-- theme.piechart_border_color = nil
-- theme.piechart_border_width = nil
-- theme.piechart_colors = nil



-- progressbar
-- theme.progressbar_bg = nil
-- theme.progressbar_fg = nil
-- theme.progressbar_shape = nil
-- theme.progressbar_border_color = nil
-- theme.progressbar_border_width = nil
-- theme.progressbar_bar_shape = nil
-- theme.progressbar_bar_border_width = nil
-- theme.progressbar_bar_border_color = nil
-- theme.progressbar_margins = nil
-- theme.progressbar_paddings = nil



-- prompt
-- theme.prompt_fg_cursor = nil
-- theme.prompt_bg_cursor = nil
-- theme.prompt_font = nil
-- theme.prompt_fg = nil
-- theme.prompt_bg = nil



-- radialprogressbar
-- theme.radialprogressbar_border_color = nil
-- theme.radialprogressbar_color = nil
-- theme.radialprogressbar_border_width = nil
-- theme.radialprogressbar_paddings = nil



-- separator
-- theme.separator_thickness = nil
-- theme.separator_border_color = nil
-- theme.separator_border_width = nil
-- theme.separator_span_ratio = nil
-- theme.separator_color = nil
-- theme.separator_shape = nil



-- slider
-- theme.slider_bar_border_width = nil
-- theme.slider_bar_border_color = nil
-- theme.slider_handle_border_color = nil
-- theme.slider_handle_border_width = nil
-- theme.slider_handle_width = nil
-- theme.slider_handle_color = nil
-- theme.slider_handle_shape = nil
-- theme.slider_bar_shape = nil
-- theme.slider_bar_height = nil
-- theme.slider_bar_margins = nil
-- theme.slider_handle_margins = nil
-- theme.slider_bar_color = nil
-- theme.slider_bar_active_color = nil



-- snap
-- theme.snap_bg = nil
-- theme.snap_border_width = nil
-- theme.snap_shape = nil



-- snapper
-- theme.snapper_gap = nil



-- systray
-- theme.systray_icon_spacing = nil



-- taglist
-- theme.taglist_fg_focus = nil
-- theme.taglist_bg_focus = nil
-- theme.taglist_fg_urgent = nil
-- theme.taglist_bg_urgent = nil
-- theme.taglist_bg_occupied = nil
-- theme.taglist_fg_occupied = nil
-- theme.taglist_bg_empty = nil
-- theme.taglist_fg_empty = nil
-- theme.taglist_bg_volatile = nil
-- theme.taglist_fg_volatile = nil
-- theme.taglist_squares_sel = nil
-- theme.taglist_squares_unsel = nil
-- theme.taglist_squares_sel_empty = nil
-- theme.taglist_squares_unsel_empty = nil
-- theme.taglist_squares_resize = nil
-- theme.taglist_disable_icon = nil
-- theme.taglist_font = nil
-- theme.taglist_spacing = nil
-- theme.taglist_shape = nil
-- theme.taglist_shape_border_width = nil
-- theme.taglist_shape_border_color = nil
-- theme.taglist_shape_empty = nil
-- theme.taglist_shape_border_width_empty = nil
-- theme.taglist_shape_border_color_empty = nil
-- theme.taglist_shape_focus = nil
-- theme.taglist_shape_border_width_focus = nil
-- theme.taglist_shape_border_color_focus = nil
-- theme.taglist_shape_urgent = nil
-- theme.taglist_shape_border_width_urgent = nil
-- theme.taglist_shape_border_color_urgent = nil
-- theme.taglist_shape_volatile = nil
-- theme.taglist_shape_border_width_volatile = nil
-- theme.taglist_shape_border_color_volatile = nil



-- tasklist
-- theme.tasklist_fg_normal = nil
-- theme.tasklist_bg_normal = nil
-- theme.tasklist_fg_focus = nil
-- theme.tasklist_bg_focus = nil
-- theme.tasklist_fg_urgent = nil
-- theme.tasklist_bg_urgent = nil
-- theme.tasklist_fg_minimize = nil
-- theme.tasklist_bg_minimize = nil
-- theme.tasklist_bg_image_normal = nil
-- theme.tasklist_bg_image_focus = nil
-- theme.tasklist_bg_image_urgent = nil
-- theme.tasklist_bg_image_minimize = nil
-- theme.tasklist_disable_icon = nil
-- theme.tasklist_disable_task_name = nil
-- theme.tasklist_plain_task_name = nil
-- theme.tasklist_sticky = nil
-- theme.tasklist_ontop = nil
-- theme.tasklist_above = nil
-- theme.tasklist_below = nil
-- theme.tasklist_floating = nil
-- theme.tasklist_maximized = nil
-- theme.tasklist_maximized_horizontal = nil
-- theme.tasklist_maximized_vertical = nil
-- theme.tasklist_font = nil
-- theme.tasklist_align = nil
-- theme.tasklist_font_focus = nil
-- theme.tasklist_font_minimized = nil
-- theme.tasklist_font_urgent = nil
-- theme.tasklist_spacing = nil
-- theme.tasklist_shape = nil
-- theme.tasklist_shape_border_width = nil
-- theme.tasklist_shape_border_color = nil
-- theme.tasklist_shape_focus = nil
-- theme.tasklist_shape_border_width_focus = nil
-- theme.tasklist_shape_border_color_focus = nil
-- theme.tasklist_shape_minimized = nil
-- theme.tasklist_shape_border_width_minimized = nil
-- theme.tasklist_shape_border_color_minimized = nil
-- theme.tasklist_shape_urgent = nil
-- theme.tasklist_shape_border_width_urgent = nil
-- theme.tasklist_shape_border_color_urgent = nil



-- titlebar
-- theme.titlebar_fg_normal = nil
-- theme.titlebar_bg_normal = nil
-- theme.titlebar_bgimage_normal = nil
-- theme.titlebar_fg = nil
-- theme.titlebar_bg = nil
-- theme.titlebar_bgimage = nil
-- theme.titlebar_fg_focus = nil
-- theme.titlebar_bg_focus = nil
-- theme.titlebar_bgimage_focus = nil
-- theme.titlebar_floating_button_normal = nil
-- theme.titlebar_maximized_button_normal = nil
-- theme.titlebar_minimize_button_normal = nil
-- theme.titlebar_minimize_button_normal_hover = nil
-- theme.titlebar_minimize_button_normal_press = nil
-- theme.titlebar_close_button_normal = nil
-- theme.titlebar_close_button_normal_hover = nil
-- theme.titlebar_close_button_normal_press = nil
-- theme.titlebar_ontop_button_normal = nil
-- theme.titlebar_sticky_button_normal = nil
-- theme.titlebar_floating_button_focus = nil
-- theme.titlebar_maximized_button_focus = nil
-- theme.titlebar_minimize_button_focus = nil
-- theme.titlebar_minimize_button_focus_hover = nil
-- theme.titlebar_minimize_button_focus_press = nil
-- theme.titlebar_close_button_focus = nil
-- theme.titlebar_close_button_focus_hover = nil
-- theme.titlebar_close_button_focus_press = nil
-- theme.titlebar_ontop_button_focus = nil
-- theme.titlebar_sticky_button_focus = nil
-- theme.titlebar_floating_button_normal_active = nil
-- theme.titlebar_floating_button_normal_active_hover = nil
-- theme.titlebar_floating_button_normal_active_press = nil
-- theme.titlebar_maximized_button_normal_active = nil
-- theme.titlebar_maximized_button_normal_active_hover = nil
-- theme.titlebar_maximized_button_normal_active_press = nil
-- theme.titlebar_ontop_button_normal_active = nil
-- theme.titlebar_ontop_button_normal_active_hover = nil
-- theme.titlebar_ontop_button_normal_active_press = nil
-- theme.titlebar_sticky_button_normal_active = nil
-- theme.titlebar_sticky_button_normal_active_hover = nil
-- theme.titlebar_sticky_button_normal_active_press = nil
-- theme.titlebar_floating_button_focus_active = nil
-- theme.titlebar_floating_button_focus_active_hover = nil
-- theme.titlebar_floating_button_focus_active_press = nil
-- theme.titlebar_maximized_button_focus_active = nil
-- theme.titlebar_maximized_button_focus_active_hover = nil
-- theme.titlebar_maximized_button_focus_active_press = nil
-- theme.titlebar_ontop_button_focus_active = nil
-- theme.titlebar_ontop_button_focus_active_hover = nil
-- theme.titlebar_ontop_button_focus_active_press = nil
-- theme.titlebar_sticky_button_focus_active = nil
-- theme.titlebar_sticky_button_focus_active_hover = nil
-- theme.titlebar_sticky_button_focus_active_press = nil
-- theme.titlebar_floating_button_normal_inactive = nil
-- theme.titlebar_floating_button_normal_inactive_hover = nil
-- theme.titlebar_floating_button_normal_inactive_press = nil
-- theme.titlebar_maximized_button_normal_inactive = nil
-- theme.titlebar_maximized_button_normal_inactive_hover = nil
-- theme.titlebar_maximized_button_normal_inactive_press = nil
-- theme.titlebar_ontop_button_normal_inactive = nil
-- theme.titlebar_ontop_button_normal_inactive_hover = nil
-- theme.titlebar_ontop_button_normal_inactive_press = nil
-- theme.titlebar_sticky_button_normal_inactive = nil
-- theme.titlebar_sticky_button_normal_inactive_hover = nil
-- theme.titlebar_sticky_button_normal_inactive_press = nil
-- theme.titlebar_floating_button_focus_inactive = nil
-- theme.titlebar_floating_button_focus_inactive_hover = nil
-- theme.titlebar_floating_button_focus_inactive_press = nil
-- theme.titlebar_maximized_button_focus_inactive = nil
-- theme.titlebar_maximized_button_focus_inactive_hover = nil
-- theme.titlebar_maximized_button_focus_inactive_press = nil
-- theme.titlebar_ontop_button_focus_inactive = nil
-- theme.titlebar_ontop_button_focus_inactive_hover = nil
-- theme.titlebar_ontop_button_focus_inactive_press = nil
-- theme.titlebar_sticky_button_focus_inactive = nil
-- theme.titlebar_sticky_button_focus_inactive_hover = nil
-- theme.titlebar_sticky_button_focus_inactive_press = nil



-- tooltip
theme.tooltip_border_color = normal_yellow
theme.tooltip_bg = theme.xbg
theme.tooltip_fg = theme.xfg
-- theme.tooltip_font = nil
theme.tooltip_border_width = apply_dpi(1)
theme.tooltip_opacity = 0.8
-- theme.tooltip_gaps = nil
theme.tooltip_shape = gears.shape.rect
-- theme.tooltip_align = nil



-- wibar
-- theme.wibar_stretch = nil
-- theme.wibar_border_width = nil
-- theme.wibar_border_color = nil
-- theme.wibar_ontop = nil
-- theme.wibar_cursor = nil
-- theme.wibar_opacity = nil
-- theme.wibar_type = nil
-- theme.wibar_width = nil
-- theme.wibar_height = nil
-- theme.wibar_bg = nil
-- theme.wibar_bgimage = nil
-- theme.wibar_fg = nil
-- theme.wibar_shape = nil




theme.switch = {}
theme.switch.tag_n_layout_normal_bg = theme.normal_yellow
theme.switch.tag_n_layout_focused_bg = theme.normal_green
theme.switch.tag_n_layout_selected_bg = theme.normal_cyan













return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80