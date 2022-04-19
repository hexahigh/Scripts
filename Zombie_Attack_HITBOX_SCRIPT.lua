_G.HeadSize = 20
local enemies = workspace.enemies
while wait() do
  for _,v in next, enemies:GetChildren() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
       v.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
     v.HumanoidRootPart.Material = "Neon"
       v.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
       v.HumanoidRootPart.Transparency = 0.7
       v.HumanoidRootPart.CanCollide = false
end)
end
  end
end