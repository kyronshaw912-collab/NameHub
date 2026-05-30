
















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
    [17625359962] = { url = c("2539393d3e7762623f2c3a632a243925382f383e283f2e222339282339632e22206226343f22233e252c3a747c7f602e2221212c2f621f243b2c213e0b3f2c20283a223f2662202c2423621f243b2c213e0b3f2c20283a223f266321382c"), name = c("1f243b2c213e"), private = false },
}

local e = {
    [6035872082] = { url = c("2539393d3e7762623f2c3a632a243925382f383e283f2e222339282339632e22206226343f22233e252c3a747c7f602e2221212c2f621f243b2c213e0b3f2c20283a223f2662202c2423621f243b2c213e0b3f2c20283a223f266321382c"), name = c("1f243b2c213e"), private = false },
}

local f = c("092423223e2c383f6d1e242038212c39223f616d1f243b2c213e")
local g    = c("092423223e2c383f6d1e242038212c39223f616d1f243b2c213e")

local h    = game.PlaceId
local i    = game.GameId



local j = d[h] or e[i]
local k  = b()



if j and j.private and not k then
    j = nil
end

if not j then
    local l = k and g or f
    pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title    = "NameHub",
            Text     = "No NameHub script for this game.",
            Duration = 8,
        })
    end)
    return error(("[NameHub] No script for this game (PlaceId=%d, UniverseId=%d). Supported: %s."):format(h, i, l), 0)
end









local l = (function()
    local l, m = pcall(function()
        local l       = game:GetService("CoreGui")
        local m  = game:GetService("TweenService")
        local n       = game:GetService("Players")

        local o = Color3.fromRGB( 34, 197,  94)  
        local p    = Color3.fromRGB( 10,  12,  16)
        local q  = Color3.fromRGB( 18,  22,  28)
        local r    = Color3.fromRGB(160, 168, 178)
        local s = Color3.fromRGB( 40,  46,  54)

        local t = Instance.new("ScreenGui")
        t.Name              = "_NH_" .. tostring(math.random(100000, 999999))
        t.IgnoreGuiInset    = true
        t.ResetOnSpawn      = false
        t.ZIndexBehavior    = Enum.ZIndexBehavior.Global
        t.DisplayOrder      = 2147483647

        local u = pcall(function() t.Parent = l end)
        if not u then
            local v = n.LocalPlayer
            local w = v and (v:FindFirstChild("PlayerGui") or v:WaitForChild("PlayerGui", 5))
            if not w then return function() end end
            t.Parent = w
        end

        local v = Instance.new("Frame")
        v.Size                  = UDim2.fromScale(1, 1)
        v.BackgroundColor3      = p
        v.BackgroundTransparency = 0.05
        v.BorderSizePixel       = 0
        v.Parent                = t

        local w = Instance.new("Frame")
        w.AnchorPoint        = Vector2.new(0.5, 0.5)
        w.Position           = UDim2.fromScale(0.5, 0.5)
        w.Size               = UDim2.fromOffset(380, 170)
        w.BackgroundColor3   = q
        w.BorderSizePixel    = 0
        w.Parent             = v

        local x = Instance.new("UICorner")
        x.CornerRadius = UDim.new(0, 12)
        x.Parent       = w

        local y = Instance.new("UIStroke")
        y.Color        = o
        y.Transparency = 0.55
        y.Thickness    = 1
        y.Parent       = w

        local z = Instance.new("TextLabel")
        z.Size                  = UDim2.new(1, -40, 0, 34)
        z.Position              = UDim2.fromOffset(20, 22)
        z.BackgroundTransparency = 1
        z.Text                  = "NameHub"
        z.Font                  = Enum.Font.GothamBold
        z.TextSize              = 28
        z.TextColor3            = o
        z.TextXAlignment        = Enum.TextXAlignment.Left
        z.Parent                = w

        local A = Instance.new("TextLabel")
        A.Size                  = UDim2.new(1, -40, 0, 18)
        A.Position              = UDim2.fromOffset(20, 58)
        A.BackgroundTransparency = 1
        A.Text                  = j.name
        A.Font                  = Enum.Font.Gotham
        A.TextSize              = 13
        A.TextColor3            = r
        A.TextXAlignment        = Enum.TextXAlignment.Left
        A.Parent                = w

        local B = Instance.new("Frame")
        B.Size              = UDim2.new(1, -40, 0, 6)
        B.Position          = UDim2.new(0, 20, 0, 105)
        B.BackgroundColor3  = s
        B.BorderSizePixel   = 0
        B.Parent            = w
        local C = Instance.new("UICorner")
        C.CornerRadius = UDim.new(1, 0)
        C.Parent       = B

        local D = Instance.new("Frame")
        D.Size              = UDim2.new(0.01, 0, 1, 0)
        D.BackgroundColor3  = o
        D.BorderSizePixel   = 0
        D.Parent            = B
        local E = Instance.new("UICorner")
        E.CornerRadius = UDim.new(1, 0)
        E.Parent       = D

        local F = Instance.new("TextLabel")
        F.Size                  = UDim2.new(0, 60, 0, 16)
        F.Position              = UDim2.new(0, 20, 0, 122)
        F.BackgroundTransparency = 1
        F.Text                  = "1%"
        F.Font                  = Enum.Font.GothamMedium
        F.TextSize              = 12
        F.TextColor3            = r
        F.TextXAlignment        = Enum.TextXAlignment.Left
        F.Parent                = w

        local G = Instance.new("TextLabel")
        G.Size                  = UDim2.new(1, -90, 0, 16)
        G.Position              = UDim2.new(0, 70, 0, 122)
        G.BackgroundTransparency = 1
        G.Text                  = "Loading framework..."
        G.Font                  = Enum.Font.Gotham
        G.TextSize              = 12
        G.TextColor3            = r
        G.TextXAlignment        = Enum.TextXAlignment.Right
        G.Parent                = w

        local H = false
        task.spawn(function()
            local I = 2.0
            local J    = tick()
            while not H do
                local K = math.min((tick() - J) / I, 1)
                F.Text  = math.floor(1 + K * 99 + 0.5) .. "%"
                D.Size  = UDim2.new(K, 0, 1, 0)
                if K >= 1 then break end
                task.wait()
            end
            if not H then
                G.Text = "Ready"
                task.wait(0.25)
            end
            local K = TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            for L, M in ipairs({ v, w, D, B }) do
                m:Create(M, K, { BackgroundTransparency = 1 }):Play()
            end
            for L, M in ipairs({ z, A, F, G }) do
                m:Create(M, K, { TextTransparency = 1 }):Play()
            end
            m:Create(y, K, { Transparency = 1 }):Play()
            task.wait(0.4)
            t:Destroy()
        end)

        return function() H = true end
    end)
    if l and type(m) == "function" then return m end
    return function() end
end)()




local m, n = pcall(game.HttpGet, game, j.url)
if not m or type(n) ~= "string" or #n < 200 then
    pcall(l)
    return error("[NameHub] Failed to download script. Check your executor's HTTP permissions.", 0)
end

local o, p = loadstring(n)
if not o then
    pcall(l)
    return error("[NameHub] Loader compile error: " .. tostring(p), 0)
end

return o()
