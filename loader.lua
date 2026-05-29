-- ============================================================================
--  NameHub Loader  (universal dispatcher)
--  Detects the current Roblox game via game.PlaceId and loads the matching
--  framework script. Forwards the `key` global into getgenv().NAMEHUB_KEY so
--  downstream scripts (or future key validation) can read it.
--
--  Source of truth lives in the NameHub Discord bot's config -- update it
--  there if you ever change branches, paths, or supported PlaceIds.
-- ============================================================================

if type(key) == "string" and getgenv then
    getgenv().NAMEHUB_KEY = key
end

local URLS = {
    [228181322]   = "https://raw.githubusercontent.com/kyronshaw912-collab/DinoFramework/main/DinoFramework.lua",
    [161541423]   = "https://raw.githubusercontent.com/kyronshaw912-collab/DinoFramework/main/DinoFramework.lua",
    [11653088948] = "https://raw.githubusercontent.com/kyronshaw912-collab/JurassicBlockyFramework/main/JurassicBlockyFramework.lua",
}

local LABELS = "Dinosaur Simulator, Jurassic Blocky"

local pid = game.PlaceId
local url = URLS[pid]

if not url then
    pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title    = "NameHub",
            Text     = "No NameHub script for this game.",
            Duration = 8,
        })
    end)
    return error(("[NameHub] No script for this game (PlaceId=%d). Supported: %s."):format(pid, LABELS), 0)
end

local ok, src = pcall(game.HttpGet, game, url)
if not ok or type(src) ~= "string" or #src < 200 then
    return error("[NameHub] Failed to download script. Check your executor's HTTP permissions.", 0)
end

local fn, err = loadstring(src)
if not fn then
    return error("[NameHub] Loader compile error: " .. tostring(err), 0)
end

return fn()
