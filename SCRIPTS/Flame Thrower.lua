--[[
Flame Thrower
Throws flames. 50-unit tank.
--]]


if script == nil then return end


ModelName = "Flame Thrower"
AmmoType = "Liquid Petroleum"
MagazineCapacity = 50
MagazineCapacityAdd = 0
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6")
Selected = false
Connected = false
Button1Down = false
CanUse = true
FirstPerson = game:GetService("InsertService"):LoadAsset(60568552)["FirstPerson"].Value
MouseAim = game:GetService("InsertService"):LoadAsset(61527949)["MouseAim"].Value
AmmoCounter = game:GetService("InsertService"):LoadAsset(66610412)["AmmoCounter"].Value


function CheckPlayer()
	if Player.Character == nil then return false end
	if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Right Arm") == nil or Player.Character:FindFirstChild("Left Arm") == nil or Player.Character:FindFirstChild("Humanoid") == nil then return false end
	if Player.Character.Humanoid.Health <= 0 then return false end
	return true
end


loadstring(game:GetService("InsertService"):LoadAsset(65363615)["tagHumanoid"].Value)()


loadstring(game:GetService("InsertService"):LoadAsset(63178291)["CameraPunch"].Value)()


loadstring(game:GetService("InsertService"):LoadAsset(62991657)["PacketFunctions"].Value)()


function CreateParts(Parent, Format)
	if Parent == nil then return end
	local Parts = Instance.new("Model")
	Parts.Name = ModelName
	if Format == 1 then
		Parts.Name = Parts.Name.. " (Holstered)"
	end
	Parts.Parent = Parent

	local MasterPart = Instance.new("Part")
	MasterPart.Name = "Handle"
	MasterPart.BrickColor = BrickColor.new("Medium stone grey")
	MasterPart.TopSurface = 0
	MasterPart.BottomSurface = 0
	MasterPart.FormFactor = "Custom"
	MasterPart.Size = Vector3.new(0.6, 1.9, 0.6)
	MasterPart.Parent = Parts
	Instance.new("CylinderMesh", MasterPart).Bevel = 0.05
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart
	if Format == 1 then
		Weld.Part1 = Player.Character:FindFirstChild("Torso")
		Weld.C0 = CFrame.new(-1, -0.25, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(-40),0, 0)
	elseif Format == 2 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
		Weld.C0 = CFrame.new(0, 1.4, 0.8)
	end
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Grip"
	Part.BrickColor = BrickColor.new("Realy black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.3, 0.5, 1)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, -0.25, -0.6)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Tank Holder"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.Parent = Parts
	Instance.new("CylinderMesh", Part)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0) * CFrame.new(0, 0.85, -0.3)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Tank"
	Part.BrickColor = BrickColor.new("Really red")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.75, 1, 0.75)
	Part.Parent = Parts
	Instance.new("CylinderMesh", Part).Bevel = 0.1
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0) * CFrame.new(0, 0.85, -0.9)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Flame Barrel 1"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 1.3, 0.2)
	Part.Parent = Parts
	Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.2, 1, 0.2)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 1.55, -0.2)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Flame Barrel Joint"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Sphere"
	Mesh.Scale = Vector3.new(0.2, 0.2, 0.2)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 2.2, -0.2)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Flame Barrel 2"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 1, 0.2)
	Part.Parent = Parts
	Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.2, 0.3, 0.2)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0) * CFrame.new(0, 2.2, -0.05)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Barrel Holder"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 1, 0.4)
	Part.Parent = Parts
	Instance.new("BlockMesh", Part).Scale = Vector3.new(0.1, 1, 1)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 1.4, 0)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Fuel Barrel"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.25, 1, 0.25)
	Part.Parent = Parts
	Instance.new("CylinderMesh", Part)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 1.4, 0.15)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Source"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.3, 0.2, 0.3)
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	Instance.new("CylinderMesh", Part)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 2, 0.15)
	Weld.Parent = Part
	local Smoke = Instance.new("Smoke", Part)
	Smoke.Enabled = false
	Smoke.Size = 20
	Smoke.RiseVelocity = -15
	Smoke.Color = Color3.new(0.7, 0.7, 0.7)
	Smoke.Opacity = 0.15

	for _, Part in pairs(Parts:GetChildren()) do
		Part.Locked = true
		Part.CanCollide = false
	end
end


function RemoveParts(Parent, Format)
	if Format == 1 then
		pcall(function() Parent[ModelName.. " (Holstered)"]:Remove() end)
	elseif Format == 2 then
		pcall(function() Parent[ModelName]:Remove() end)
	end
end


function SetAngle(Joint, Angle, Character)
	if Character == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	if Joint == 1 or Joint == 3 then
		Joints[Joint].DesiredAngle = Angle
	end
	if Joint == 2 or Joint == 4 then
		Joints[Joint].DesiredAngle = -Angle
	end
end


function ForceAngle(Joint, Angle, Character)
	if Character == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	if Joint == 1 or Joint == 3 then
		Joints[Joint].DesiredAngle = Angle
		Joints[Joint].CurrentAngle = Angle
	end
	if Joint == 2 or Joint == 4 then
		Joints[Joint].DesiredAngle = -Angle
		Joints[Joint].CurrentAngle = -Angle
	end
end


function SetSpeed(Joint, Speed, Character)
	if Character == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	Joints[Joint].MaxVelocity = Speed
end


function DisableLimb(Limb, Character)
	if Character == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder"),
		Character.Torso:FindFirstChild("Left Shoulder"),
		Character.Torso:FindFirstChild("Right Hip"),
		Character.Torso:FindFirstChild("Left Hip")
	}
	local Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	local Joint = Instance.new("Motor6D")
	Joint.Parent = Character.Torso
	Joint.Part0 = Character.Torso
	Joint.Part1 = Limbs[Limb]
	if Limb == 1 then
		Joint.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.Name = "Right Shoulder 2"
	elseif Limb == 2 then
		Joint.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.Name = "Left Shoulder 2"
	elseif Limb == 3 then
		Joint.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.Name = "Right Hip 2"
	elseif Limb == 4 then
		Joint.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.Name = "Left Hip 2"
	end
	Joint.MaxVelocity = Joints[Limb].MaxVelocity
	Joint.CurrentAngle = Joints[Limb].CurrentAngle
	Joint.DesiredAngle = Joints[Limb].DesiredAngle
	Joints[Limb]:Remove()
end


function ResetLimbCFrame(Limb, Character)
	if Character == nil then return false end
	if Character.Parent == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	local Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	if Limb == 1 then
		Joints[Limb].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joints[Limb].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	elseif Limb == 2 then
		Joints[Limb].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joints[Limb].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
	elseif Limb == 3 then
		Joints[Limb].C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joints[Limb].C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	elseif Limb == 4 then
		Joints[Limb].C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joints[Limb].C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
	end
end


function EnableLimb(Limb, Character)
	if Character == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	local Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	if Limb == 1 then
		Joints[Limb].Name = "Right Shoulder"
	elseif Limb == 2 then
		Joints[Limb].Name = "Left Shoulder"
	elseif Limb == 3 then
		Joints[Limb].Name = "Right Hip"
	elseif Limb == 4 then
		Joints[Limb].Name = "Left Hip"
	end
	Animate = Character:FindFirstChild("Animate")
	if Animate == nil then return false end
	Animate = Animate:Clone()
	Character.Animate:Remove()
	Animate.Parent = Character
end


function onButton1Down(Mouse)
	if Button1Down == true then return end
	Button1Down = true
	if CheckPlayer() == false then return end
	if CanUse == true then
		SoundToServer("Click", "http://www.roblox.com/Asset/?id=2697295", 15, 0.25, false, Player.Character[ModelName].Handle)
		CanUse = false
		pcall(function() Player.Character[ModelName].Source.Smoke.Enabled = true end)
		while Button1Down == true do
			if script.Magazine.Value <= 0 then
				break
			end
			SoundToServer("Whoosh", "rbxasset://sounds/Rocket whoosh 01.wav", 3, 0.5, false, Player.Character[ModelName].Handle)
			script.Magazine.Value = script.Magazine.Value - 1
			local Flame = Instance.new("Part", Workspace)
			Flame.Name = "Flame"
			Flame.TopSurface = 0
			Flame.BottomSurface = 0
			Flame.BrickColor = BrickColor.new((function()
				local Color = math.random(1, 5)
				if Color == 1 then
					return "Really red"
				elseif Color == 2 then
					return "Bright red"
				elseif Color == 3 then
					return "White"
				elseif Color == 4 then
					return "Black"
				elseif Color == 5 then
					return "New Yeller"
				end
			end)())
			Flame.Locked = true
			Flame.CanCollide = false
			Flame.FormFactor = "Custom"
			Flame.Size = Vector3.new(2, 2, 2)
			Flame.CFrame = Player.Character[ModelName].Source.CFrame * CFrame.new(0, -3, 0)
			Flame.Elasticity = 0
			Flame.Friction = 0
			Instance.new("Configuration", Flame).Name = "RealFire"
			local Mesh = Instance.new("SpecialMesh", Flame)
			Mesh.MeshType = "Sphere"
			Mesh.Scale = Vector3.new()
			local creator = Instance.new("ObjectValue", Flame)
			creator.Name = "creator"
			creator.Value = Player
			local BodyVelocity = Instance.new("BodyVelocity", Flame)
			BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
			BodyVelocity.velocity = ((Mouse.Hit.p - Player.Character[ModelName].Source.Position).unit * math.random(50, 125)) + (Vector3.new(math.random(-8000, 8000) / 1000, math.random(-2000, 1500) / 1000, math.random(-8000, 8000) / 1000))
			coroutine.wrap(function()
				for i = 0, 1, 0.05 do
					Flame.Transparency = i
					wait()
				end
				Flame:Remove()
			end)()
			coroutine.wrap(function()
				while Flame.Parent ~= nil do
					Flame.Mesh.Scale = Flame.Mesh.Scale + Vector3.new(0.4, 0.4, 0.4)
					wait()
				end
			end)()
			coroutine.wrap(function()
				TouchedToServer([[
if Hit.Name == "Flame" or Hit.Anchored == true then return end
game:GetService("InsertService"):LoadAsset(61110829)["RealFire"].Parent = Hit
]], Flame)
				wait(math.random(1000, 5000) / 1000)
				for i = Flame.Transparency, 1, 0.1 do
					Flame.Transparency = i
					wait()
				end
				Flame:Remove()
			end)()
			Flame:BreakJoints()
			CameraPunch(math.rad(math.random(-100, 1000) / 1000), math.rad(math.random(-1000, 1000) / 1000))
			wait(0.05)
		end
		pcall(function() Player.Character[ModelName].Source.Smoke.Enabled = false end)
		CanUse = true
	end
end


function onButton1Up(Mouse)
	Button1Down = false
end


function onKeyDown(Key, Mouse)
	if Selected == false then return end
	Key = Key:lower()
	if Button1Down == false and CanUse == true and CheckPlayer() == true then
		if Key == "q" then
			if Mouse.Target == nil then return end
			if CheckPlayer() == false then return end
			local NewPlayer = game:GetService("Players"):GetPlayerFromCharacter(Mouse.Target.Parent)
			if NewPlayer == nil then return end
			if NewPlayer.Character == nil then return end
			if NewPlayer.Character:FindFirstChild("Torso") == nil then return end
			if (NewPlayer.Character.Torso.Position - Player.Character.Torso.Position).magnitude > 10 then return end
			onDeselected(Mouse)
			wait()
			RemoveParts(Player.Character, 1)
			script.Parent.Parent = NewPlayer.Backpack
			Player = NewPlayer
		elseif Key == "r" then
			if script.Magazine.Value >= MagazineCapacity or Player.Backpack.Ammo[AmmoType].Value <= 0 then return end
			CanUse = false
			DisableLimb(2, Player.Character)
			SetSpeed(2, 0.15, Player.Character)
			SetAngle(2, math.rad(90), Player.Character)
			UpdateFirstPerson(true)
			for i = 0, 1, 0.05 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - (0.5 * i), 0.5 + (0.05 * i), 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (50 * i)), 0)
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5 + (0.25 * i), 0.5 - (0.1 * i), 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (4 * i)), 0)
				end)
				wait()
			end
			pcall(function()
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1, 0.55, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(140), 0)
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.25, 0.4, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-92), 0)
			end)
			SoundToServer("Tank Removed", "http://www.roblox.com/Asset/?id=10209813", 1, 1, false, Player.Character[ModelName].Handle)
			Player.Backpack.Ammo[AmmoType].Value = Player.Backpack.Ammo[AmmoType].Value + script.Magazine.Value
			script.Magazine.Value = 0
			local Clone = nil
			local Weld = nil
			pcall(function()
				Clone = Player.Character[ModelName].Tank:Clone()
				Clone.Parent = Workspace
				Weld = Instance.new("Weld", Clone)
				Weld.Part0 = Weld.Parent
				Weld.Part1 = Player.Character:FindFirstChild("Left Arm")
				Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0) * CFrame.new(0, 1.3, 0)
				Player.Character[ModelName].Tank.Transparency = 1
			end)
			SetAngle(2, math.rad(40), Player.Character)
			CameraSlide(math.rad(-2), 0, 0.1)
			pcall(function() Weld:Remove() end)
			pcall(function()
				Clone.CanCollide = true
				game:GetService("Debris"):AddItem(Clone, 25)
			end)
			SetAngle(2, math.rad(90), Player.Character)
			CameraSlide(math.rad(2), 0, 0.1)
			SetAngle(2, 0, Player.Character)
			for i = 1, 0, -0.05 do
				pcall(function() Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5 + (0.25 * i), 0.5 - (0.1 * i), 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (4 * i)), 0) end)
				CameraPunch(math.rad(-1), 0)
				wait()
			end
			pcall(function()
				local Tank = Player.Character[ModelName].Tank:Clone()
				Tank.Name = "New Tank"
				Tank.Transparency = 0
				Tank.Parent = Player.Character[ModelName]
				local Weld = Instance.new("Weld", Tank)
				Weld.Part0 = Weld.Parent
				Weld.Part1 = Player.Character:FindFirstChild("Left Arm")
				Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0) * CFrame.new(0, 1.3, 0)
			end)
			SoundToServer("Tank Replaced", "http://www.roblox.com/Asset/?id=10209801", 1.5, 1, false, Player.Character[ModelName].Handle)
			SetAngle(2, math.rad(90), Player.Character)
			for i = 0, 1, 0.1 do
				pcall(function() Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5 + (0.25 * i), 0.5 - (0.1 * i), 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (4 * i)), 0) end)
				CameraPunch(math.rad(1), 0)
				wait()
			end
			CameraSlide(math.rad(5), 0, 0.1)
			pcall(function()
				Player.Character[ModelName].Tank.Transparency = 0
				Player.Character[ModelName]["New Tank"]:Remove()
			end)
			if Player.Backpack.Ammo[AmmoType].Value - MagazineCapacity < 0 then
				script.Magazine.Value = Player.Backpack.Ammo[AmmoType].Value
				Player.Backpack.Ammo[AmmoType].Value = 0
			else
				script.Magazine.Value = MagazineCapacity
				Player.Backpack.Ammo[AmmoType].Value = Player.Backpack.Ammo[AmmoType].Value - MagazineCapacity
			end
			SetAngle(2, 0, Player.Character)
			for i = 1, 0, -0.075 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - (0.5 * i), 0.5 + (0.05 * i), 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (50 * i)), 0)
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5 + (0.25 * i), 0.5 - (0.1 * i), 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (4 * i)), 0)
				end)
				wait()
			end
			ResetLimbCFrame(1, Player.Character)
			ResetLimbCFrame(2, Player.Character)
			EnableLimb(1, Player.Character)
			EnableLimb(2, Player.Character)
			DisableLimb(1, Player.Character)
			UpdateFirstPerson(true)
			wait(0.5)
			CanUse = true
		elseif Key == "g" then
			CanUse = false
			SoundToServer("Slash", "rbxasset://sounds/swordslash.wav", 2, 1, false, Player.Character.Torso)
			SetSpeed(1, 0.3, Player.Character)
			SetAngle(1, math.rad(150), Player.Character)
			CameraSlide(math.rad(15), 0, 0.2)
			SetSpeed(1, 0.5, Player.Character)
			SetAngle(1, math.rad(10), Player.Character)
			local HasHit = false
			local _, HitConnection = pcall(function() return Player.Character[ModelName].Handle.Touched:connect(function(Hit)
				if HasHit == true or Hit:IsDescendantOf(Player.Character) then return end
				HasHit = true
				SoundToServer("Bash", "http://www.roblox.com/Asset/?id=46153268", 1, 0.25, false, Player.Character.Torso)
				local Humanoid = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid")
				if Humanoid ~= nil then
					tagHumanoid(Humanoid)
					Humanoid:TakeDamage(9)
					wait()
					pcall(function() untagHumanoid(Humanoid) end)
				end
			end) end)
			CameraSlide(math.rad(-20), 0, 0.15)
			pcall(function() HitConnection:disconnect() end)
			SetSpeed(1, 0.15, Player.Character)
			SetAngle(1, math.rad(90), Player.Character)
			CameraSlide(math.rad(5), 0, 0.25)
			CanUse = true
		end
	end
end


function onSelected(Mouse)
	if Selected == true or CanUse == false then return end
	CanUse = false
	while true do
		if CheckPlayer() == true then
			if Player.Character.Torso:FindFirstChild("Right Shoulder") ~= nil and Player.Character.Torso:FindFirstChild("Left Shoulder") ~= nil then
				break
			end
		end
		wait(0.1)
	end
	Selected = true
	RemoveParts(Player.Character, 1)
	CreateParts(Player.Character, 2)
	DisableLimb(1, Player.Character)
	SetSpeed(1, 0.1, Player.Character)
	SetAngle(1, math.rad(90), Player.Character)
	wait(0.5)
	Mouse.Icon = "rbxasset://textures\\GunCursor.png"
	Mouse.Button1Down:connect(function() onButton1Down(Mouse) end)
	Mouse.Button1Up:connect(function() onButton1Up(Mouse) end)
	Mouse.KeyDown:connect(function(Key) onKeyDown(Key, Mouse) end)
	CanUse = true
end


function onDeselected(Mouse)
	if Selected == false or Primed == true then return end
	Selected = false
	while CanUse == false do wait() end
	if Selected == true then return end
	CanUse = false
	SetSpeed(1, 0.1, Player.Character)
	SetAngle(1, 0, Player.Character)
	wait(0.5)
	RemoveParts(Player.Character, 2)
	CreateParts(Player.Character, 1)
	ResetLimbCFrame(1, Player.Character)
	DisableLimb(1, Player.Character)
	EnableLimb(1, Player.Character)
	CanUse = true
end


if script.Parent.ClassName ~= "HopperBin" then
	if Player == nil then print("Error: Player not found!") return end
	Tool = Instance.new("HopperBin")
	Tool.Name = ModelName
	Tool.Parent = Player.Backpack
	Instance.new("IntValue", script).Name = "Magazine"
	script.Name = "Main"
	script.Parent = Tool
elseif script.Parent.ClassName == "HopperBin" and Connected == false then
	Connected = true
	Player = script.Parent.Parent.Parent
	if Player.Backpack:FindFirstChild("Ammo") == nil then
		Instance.new("Configuration", Player.Backpack).Name = "Ammo"
	end
	if Player.Backpack.Ammo:FindFirstChild(AmmoType) == nil then
		Instance.new("IntValue", Player.Backpack.Ammo).Name = AmmoType
		Player.Backpack.Ammo[AmmoType].Value = 200 * 2
	end
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
	CreateParts(Player.Character, 1)
	coroutine.wrap(loadstring(FirstPerson))()
	coroutine.wrap(loadstring(MouseAim))()
	coroutine.wrap(loadstring(AmmoCounter))()
end