-- Delta Skybox Loader
-- Upload the six PNG files to Roblox as image assets, then paste their IDs below.
-- GitHub raw image URLs cannot be assigned directly to Skybox properties.

local CONFIG = {
    SkyboxBk = "rbxassetid://PASTE_BACK_ID",
    SkyboxDn = "rbxassetid://PASTE_DOWN_ID",
    SkyboxFt = "rbxassetid://PASTE_FRONT_ID",
    SkyboxLf = "rbxassetid://PASTE_LEFT_ID",
    SkyboxRt = "rbxassetid://PASTE_RIGHT_ID",
    SkyboxUp = "rbxassetid://PASTE_UP_ID",
}

local Lighting = game:GetService("Lighting")

local sky = Lighting:FindFirstChildOfClass("Sky")
if not sky then
    sky = Instance.new("Sky")
    sky.Name = "CustomSkybox"
    sky.Parent = Lighting
end

local missing = {}
for property, assetId in pairs(CONFIG) do
    if string.find(assetId, "PASTE_") then
        table.insert(missing, property)
    else
        sky[property] = assetId
    end
end

if #missing > 0 then
    warn("Skybox not fully configured. Add asset IDs for: " .. table.concat(missing, ", "))
else
    print("Custom skybox applied.")
end
