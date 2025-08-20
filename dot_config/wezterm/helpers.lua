local wezterm = require 'wezterm'
local act = wezterm.action

local module = {}

function module.theme_switcher(window, pane)
    -- get builtin color schemes
    local schemes = wezterm.get_builtin_color_schemes()
    local choices = {}

    -- populate theme names in choices list
    for key, _ in pairs(schemes) do
        table.insert(choices, { label = tostring(key) })
    end

    -- sort choices list
    table.sort(choices, function(c1, c2)
        return c1.label < c2.label
    end)

    window:perform_action(
        act.InputSelector {
            title = '🎨 Pick a Theme!',
            choices = choices,
            fuzzy = true,

            action = wezterm.action_callback(function(window, _, id, label)
                if not id and not label then
                    wezterm.log_info 'cancelled'
                else
                    window:set_config_overrides { color_scheme = label }
                end
            end),
        },
        pane
    )
end

return module
