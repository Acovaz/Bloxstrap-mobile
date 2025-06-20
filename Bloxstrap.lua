
for _, v in pairs(workspace:GetDescendants()) do
    if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Fire") or v:IsA("Sparkles") then
        v:Destroy()
    end
end

-- Lighting optimization
local lighting = game:GetService("Lighting")
lighting.FogEnd = 100
lighting.GlobalShadows = false
for _, v in pairs(lighting:GetChildren()) do
    if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") then
        v.Enabled = false
    end
end

-- Water settings
if workspace:FindFirstChildOfClass("Terrain") then
    local terrain = workspace:FindFirstChildOfClass("Terrain")
    terrain.Decorations = false
    terrain.WaterWaveSize = 0
    terrain.WaterWaveSpeed = 0
    terrain.WaterReflectance = 0
    terrain.WaterTransparency = 1
end

-- Remove textures (optional)
for _, v in pairs(workspace:GetDescendants()) do
    if v:IsA("Decal") or v:IsA("Texture") then
        v.Transparency = 1
    end
end
