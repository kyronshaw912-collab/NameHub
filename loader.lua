










if type(key) == "string" and getgenv then
    getgenv().NAMEHUB_KEY = key
end




local a = {
    10419689724,
}
local b=function()    

local b, c = pcall(function()
        return game:GetService("Players").LocalPlayer
    end)
    if not b or not c then return false end
    local d = c.UserId
    for e, f in ipairs(a) do
        if d == f then return true end
    end
    return false
end local c=function(





c)    
local d, e = {}, 0x4D
    for f = 1, #c, 2 do
        local g = tonumber(c:sub(f, f + 1), 16)
        if g then d[#d + 1] = string.char(bit32.bxor(g, e)) end
    end
    return table.concat(d)
end

local d = {
    [228181322  ] = { url = c("2539393d3e7762623f2c3a632a243925382f383e283f2e222339282339632e22206226343f22233e252c3a747c7f602e2221212c2f62092423220b3f2c20283a223f2662202c242362092423220b3f2c20283a223f266321382c"), name = c("092423223e2c383f6d1e242038212c39223f"), private = false },
    [161541423  ] = { url = c("2539393d3e7762623f2c3a632a243925382f383e283f2e222339282339632e22206226343f22233e252c3a747c7f602e2221212c2f62092423220b3f2c20283a223f2662202c242362092423220b3f2c20283a223f266321382c"), name = c("092423223e2c383f6d1e242038212c39223f"), private = false },
    [17625359962] = { url = c("2539393d3e7762623f2c3a632a243925382f383e283f2e222339282339632e22206226343f22233e252c3a747c7f602e2221212c2f621f243b2c213e0b3f2c20283a223f2662202c2423621f243b2c213e0b3f2c20283a223f266321382c"), name = c("1f243b2c213e"), private = true  },
}

local e = c("092423223e2c383f6d1e242038212c39223f")
local f    = c("092423223e2c383f6d1e242038212c39223f616d1f243b2c213e")

local g    = game.PlaceId
local h = d[g]
local i  = b()



if h and h.private and not i then
    h = nil
end

if not h then
    local j = i and f or e
    pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title    = "NameHub",
            Text     = "No NameHub script for this game.",
            Duration = 8,
        })
    end)
    return error(("[NameHub] No script for this game (PlaceId=%d). Supported: %s."):format(g, j), 0)
end









local j = (function()
    local j, k = pcall(function()
        local j       = game:GetService("CoreGui")
        local k  = game:GetService("TweenService")
        local l       = game:GetService("Players")

        local m = Color3.fromRGB( 34, 197,  94)  
        local n    = Color3.fromRGB( 10,  12,  16)
        local o  = Color3.fromRGB( 18,  22,  28)
        local p    = Color3.fromRGB(160, 168, 178)
        local q = Color3.fromRGB( 40,  46,  54)

        local r = Instance.new("ScreenGui")
        r.Name              = "_NH_" .. tostring(math.random(100000, 999999))
        r.IgnoreGuiInset    = true
        r.ResetOnSpawn      = false
        r.ZIndexBehavior    = Enum.ZIndexBehavior.Global
        r.DisplayOrder      = 2147483647

        local s = pcall(function() r.Parent = j end)
        if not s then
            local t = l.LocalPlayer
            local u = t and (t:FindFirstChild("PlayerGui") or t:WaitForChild("PlayerGui", 5))
            if not u then return function() end end
            r.Parent = u
        end

        local t = Instance.new("Frame")
        t.Size                  = UDim2.fromScale(1, 1)
        t.BackgroundColor3      = n
        t.BackgroundTransparency = 0.05
        t.BorderSizePixel       = 0
        t.Parent                = r

        local u = Instance.new("Frame")
        u.AnchorPoint        = Vector2.new(0.5, 0.5)
        u.Position           = UDim2.fromScale(0.5, 0.5)
        u.Size               = UDim2.fromOffset(380, 170)
        u.BackgroundColor3   = o
        u.BorderSizePixel    = 0
        u.Parent             = t

        local v = Instance.new("UICorner")
        v.CornerRadius = UDim.new(0, 12)
        v.Parent       = u

        local w = Instance.new("UIStroke")
        w.Color        = m
        w.Transparency = 0.55
        w.Thickness    = 1
        w.Parent       = u

        local x = Instance.new("TextLabel")
        x.Size                  = UDim2.new(1, -40, 0, 34)
        x.Position              = UDim2.fromOffset(20, 22)
        x.BackgroundTransparency = 1
        x.Text                  = "NameHub"
        x.Font                  = Enum.Font.GothamBold
        x.TextSize              = 28
        x.TextColor3            = m
        x.TextXAlignment        = Enum.TextXAlignment.Left
        x.Parent                = u

        local y = Instance.new("TextLabel")
        y.Size                  = UDim2.new(1, -40, 0, 18)
        y.Position              = UDim2.fromOffset(20, 58)
        y.BackgroundTransparency = 1
        y.Text                  = h.name
        y.Font                  = Enum.Font.Gotham
        y.TextSize              = 13
        y.TextColor3            = p
        y.TextXAlignment        = Enum.TextXAlignment.Left
        y.Parent                = u

        local z = Instance.new("Frame")
        z.Size              = UDim2.new(1, -40, 0, 6)
        z.Position          = UDim2.new(0, 20, 0, 105)
        z.BackgroundColor3  = q
        z.BorderSizePixel   = 0
        z.Parent            = u
        local A = Instance.new("UICorner")
        A.CornerRadius = UDim.new(1, 0)
        A.Parent       = z

        local B = Instance.new("Frame")
        B.Size              = UDim2.new(0.01, 0, 1, 0)
        B.BackgroundColor3  = m
        B.BorderSizePixel   = 0
        B.Parent            = z
        local C = Instance.new("UICorner")
        C.CornerRadius = UDim.new(1, 0)
        C.Parent       = B

        local D = Instance.new("TextLabel")
        D.Size                  = UDim2.new(0, 60, 0, 16)
        D.Position              = UDim2.new(0, 20, 0, 122)
        D.BackgroundTransparency = 1
        D.Text                  = "1%"
        D.Font                  = Enum.Font.GothamMedium
        D.TextSize              = 12
        D.TextColor3            = p
        D.TextXAlignment        = Enum.TextXAlignment.Left
        D.Parent                = u

        local E = Instance.new("TextLabel")
        E.Size                  = UDim2.new(1, -90, 0, 16)
        E.Position              = UDim2.new(0, 70, 0, 122)
        E.BackgroundTransparency = 1
        E.Text                  = "Loading framework..."
        E.Font                  = Enum.Font.Gotham
        E.TextSize              = 12
        E.TextColor3            = p
        E.TextXAlignment        = Enum.TextXAlignment.Right
        E.Parent                = u

        local F = false
        task.spawn(function()
            local G = 2.0
            local H    = tick()
            while not F do
                local I = math.min((tick() - H) / G, 1)
                D.Text  = math.floor(1 + I * 99 + 0.5) .. "%"
                B.Size  = UDim2.new(I, 0, 1, 0)
                if I >= 1 then break end
                task.wait()
            end
            if not F then
                E.Text = "Ready"
                task.wait(0.25)
            end
            local I = TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            for J, K in ipairs({ t, u, B, z }) do
                k:Create(K, I, { BackgroundTransparency = 1 }):Play()
            end
            for J, K in ipairs({ x, y, D, E }) do
                k:Create(K, I, { TextTransparency = 1 }):Play()
            end
            k:Create(w, I, { Transparency = 1 }):Play()
            task.wait(0.4)
            r:Destroy()
        end)

        return function() F = true end
    end)
    if j and type(k) == "function" then return k end
    return function() end
end)()




local k, l = pcall(game.HttpGet, game, h.url)
if not k or type(l) ~= "string" or #l < 200 then
    pcall(j)
    return error("[NameHub] Failed to download script. Check your executor's HTTP permissions.", 0)
end

local m, n = loadstring(l)
if not m then
    pcall(j)
    return error("[NameHub] Loader compile error: " .. tostring(n), 0)
end

return m()
