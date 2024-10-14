function Status:name()
    local h = self._tab.current.hovered
    if not h then
        return ui.Line {}
    end
    local linked = ""
    -- Show symlink in status bar
    if h.link_to ~= nil then
        linked = " -> " .. tostring(h.link_to)
    end
    return ui.Line(" " .. h.name .. linked)
end
