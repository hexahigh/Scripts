local pchar = game.Players.LocalPlayer.Character                
local duck = Instance.new("SpecialMesh", pchar.Torso)
duck.MeshType = "FileMesh"
duck.MeshId = "rbxassetid://9419831"
duck.TextureId = "rbxassetid://9419827"
duck.Scale = Vector3.new(5,5,5)
pchar.Head.Transparency = 1
pchar["Left Arm"].Transparency = 1
pchar["Right Arm"].Transparency = 1
pchar["Left Leg"].Transparency = 1
pchar["Right Leg"].Transparency = 1