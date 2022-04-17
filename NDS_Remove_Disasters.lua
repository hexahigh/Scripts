--[[This script removes most of the disasters, I can't get them all:
]]
while wait() do
for i,v in pairs(game:GetService("Workspace").Structure:GetDescendants()) do
if v.Name == "Lightning" or v.Name == "MeteorTemplate" or v.Name == "Fire" or v.Name == "MeteorFolder" or  v.Name == "TsunamiWave" or v.Name == "TornadoPart" or v.Name == "AcidRain" or v.Name == "Cloud" or v.Name == "FireTag" then
v:Destroy()
print("Destroyed: "..v.Name)
end
end
for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
if v.ClassName == "Explosion" then 
v:Destroy()
print("Destroyed: Explosion")
end
end
end