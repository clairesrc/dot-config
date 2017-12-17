downloads.default_dir = os.getenv("HOME") .. "/Downloads"

downloads.add_signal("download-location", function (uri, file)
    if not file or file == "" then
        file = (string.match(uri, "/([^/]+)$")
            or string.match(uri, "^%w+://(.+)")
            or string.gsub(uri, "/", "_")
            or "untitled")
    end
    return downloads.default_dir .. "/" .. file
end)

modes.add_binds("normal", {
    { "<Control-c>", "Copy selected text.", function ()
        luakit.selection.clipboard = luakit.selection.primary
    end},
})

if string.match(string.lower(uri), "^mailto:") then
    local mailto = "https://mail.google.com/mail/?extsrc=mailto&url=%s"
    local w = window.ancestor(v)
    w:new_tab(string.format(mailto, uri))
    return false
end

webview.add_signal("init", function (view)
    view:add_signal("navigation-request", function (_, uri)
        if uri == "about:blank" then
            local html = "<html><body bgcolor='#000000'></body></html>"
            view:load_string(html, "about:blank")
            return true
        end
    end)
end)
