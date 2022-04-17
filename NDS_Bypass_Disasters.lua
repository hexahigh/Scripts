--[[If you run this script, every 5 seconds you'll be moved to the TowerPart in the game. 
This means if you get teleported to the map, you'll be teleported back before the disaster:
]]
while wait(5) do
game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").TowerPart.Position)
end