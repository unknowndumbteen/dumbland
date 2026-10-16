local terminal    = "kitty13"
local fileManager = "nautilus"
local menu        = "noctalia msg panel-open launcher"
local browser = "helium-browser"

local mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))
local closeWindowBind = hl.bind(mainMod .. " + C", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))    -- dwindle only
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd("noctalia msg power-cycle next"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("noctalia msg session lock"))
hl.bind(mainMod .. " + ALT + R", hl.dsp.exec_cmd("screenrecord"))
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd("noctalia msg screenshot-fullscreen"))
hl.bind(mainMod .. " + ALT + P", hl.dsp.exec_cmd("noctalia msg screenshot-region"))




-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + mouse_up",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ direction = "right" }))

hl.bind(mainMod .. " + SHIFT + left",  hl.dsp.window.swap({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.swap({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + up",    hl.dsp.window.swap({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + down",  hl.dsp.window.swap({ direction = "down" }))

--hl.bind(mainMod .. " + x",  hl.dsp.window.resize({x = 50%,y = 100%}))



-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- move through existing workspaces with mainMod + arrow
-- Switch to next/previous workspace

hl.bind(mainMod .. " + CTRL + right",
    hl.dsp.focus({ workspace = "e+1" })
)

hl.bind(mainMod .. " + CTRL + left",
    hl.dsp.focus({ workspace = "e-1" })
)

hl.bind(mainMod .. " + CTRL + mouse_down",
    hl.dsp.focus({ workspace = "e+1" })
)

hl.bind(mainMod .. " + CTRL + mouse_up",
    hl.dsp.focus({ workspace = "e-1" })
)



-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + Z", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("F3", hl.dsp.exec_cmd("noctalia msg volume-up"), { locked = true, repeating = true })
hl.bind("F2", hl.dsp.exec_cmd("noctalia msg volume-down"),      { locked = true, repeating = true })
hl.bind("F1",        hl.dsp.exec_cmd("noctalia msg volume-mute"),     { locked = true, repeating = true })
hl.bind("F4",     hl.dsp.exec_cmd("noctalia msg mic-mute"),   { locked = true, repeating = true })
hl.bind("F8",  hl.dsp.exec_cmd("noctalia msg brightness-up"),                  { locked = true, repeating = true })
hl.bind("F7",hl.dsp.exec_cmd("noctalia msg brightness-down"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })


return{}
