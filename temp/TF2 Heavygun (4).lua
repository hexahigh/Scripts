Player = game:GetService("Players").royalwiryman
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
bladecolor = BrickColor.new("New Yeller") 
attack = false 
attackdebounce = false 
readytoshoot = false 
Modes = {"Fists", "Minigun"} 
Number = 1
mode = Modes[Number]
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
--what anim 
anim = "none" 
 
 
 
local model1 = Instance.new("Model") 
model1.Name = "Fists" 
local model2 = Instance.new("Model") 
model2.Name = "Minigun" 
local model3 = Instance.new("Model") 
model3.Name = "Sandvich" 
 
local leftfist = LeftArm:Clone() 
leftfist.Parent = model1 
leftfist.Name = "Left Arm" 
local rightfist = RightArm:Clone() 
rightfist.Parent = model1 
rightfist.Name = "Right Arm" 
local hum = Instance.new("Humanoid") 
hum.Parent = model1 
Children = Character:GetChildren() 
for i = 1, #Children do 
if Children[i].className == "Shirt" or Children[i].className == "Pants" then 
local stuff = Children[i]:Clone() 
stuff.Parent = model1 
end 
end 
local minigun1 = Instance.new("Part") 
minigun1.formFactor = 1 
minigun1.CanCollide = false 
minigun1.Name = "Handle" 
minigun1.Locked = true 
minigun1.Size = Vector3.new(1,1,1) 
minigun1.Parent = model2 
minigun1.BrickColor = BrickColor.new("Black") 
local minigun2 = Instance.new("Part") 
minigun2.formFactor = 1 
minigun2.CanCollide = false 
minigun2.Name = "Part2" 
minigun2.Locked = true 
minigun2.Size = Vector3.new(1,1,1) 
minigun2.Parent = model2 
minigun2.BrickColor = BrickColor.new("Black") 
local minigun3 = Instance.new("Part") 
minigun3.formFactor = 1 
minigun3.CanCollide = false 
minigun3.Name = "Part3" 
minigun3.Locked = true 
minigun3.Size = Vector3.new(1,1,1) 
minigun3.Parent = model2 
minigun3.BrickColor = BrickColor.new("Black") 
local minigun4 = Instance.new("Part") 
minigun4.formFactor = 1 
minigun4.CanCollide = false 
minigun4.Name = "Part4" 
minigun4.Locked = true 
minigun4.Size = Vector3.new(1,1,1) 
minigun4.Parent = model2 
minigun4.BrickColor = BrickColor.new("Black") 
local minigun5 = Instance.new("Part") 
minigun5.formFactor = 1 
minigun5.CanCollide = false 
minigun5.Name = "Part5" 
minigun5.Locked = true 
minigun5.Size = Vector3.new(1,1,1) 
minigun5.Parent = model2 
minigun5.BrickColor = BrickColor.new("Black") 
local minigun6 = Instance.new("Part") 
minigun6.formFactor = 1 
minigun6.CanCollide = false 
minigun6.Name = "Part6" 
minigun6.Locked = true 
minigun6.Size = Vector3.new(1,1,1) 
minigun6.Parent = model2 
minigun6.BrickColor = BrickColor.new("Black") 
local minigun7 = Instance.new("Part") 
minigun7.formFactor = 1 
minigun7.CanCollide = false 
minigun7.Name = "Part7" 
minigun7.Locked = true 
minigun7.Size = Vector3.new(1,1,1) 
minigun7.Parent = model2 
minigun7.BrickColor = BrickColor.new("Black") 
local minigun8 = Instance.new("Part") 
minigun8.formFactor = 1 
minigun8.CanCollide = false 
minigun8.Name = "Part8" 
minigun8.Locked = true 
minigun8.Size = Vector3.new(1,1,1) 
minigun8.Parent = model2 
minigun8.BrickColor = BrickColor.new("Black") 
local minigun9 = Instance.new("Part") 
minigun9.formFactor = 1 
minigun9.CanCollide = false 
minigun9.Name = "Part9" 
minigun9.Locked = true 
minigun9.Size = Vector3.new(2,2,2) 
minigun9.Parent = model2 
minigun9.BrickColor = BrickColor.new("Black") 
local minigun10 = Instance.new("Part") 
minigun10.formFactor = 1 
minigun10.CanCollide = false 
minigun10.Name = "Part10" 
minigun10.Locked = true 
minigun10.Size = Vector3.new(2,2,2) 
minigun10.Parent = model2 
minigun10.BrickColor = BrickColor.new("Black") 
local minigun11 = Instance.new("Part") 
minigun11.formFactor = 1 
minigun11.CanCollide = false 
minigun11.Name = "Part11" 
minigun11.Locked = true 
minigun11.Size = Vector3.new(2,2,2) 
minigun11.Parent = model2 
minigun11.BrickColor = BrickColor.new("White") 
local minigun12 = Instance.new("Part") 
minigun12.formFactor = 1 
minigun12.CanCollide = false 
minigun12.Name = "Part12" 
minigun12.Locked = true 
minigun12.Size = Vector3.new(1,1,1) 
minigun12.Parent = model2 
minigun12.BrickColor = BrickColor.new("Black") 
local minigun13 = Instance.new("Part") 
minigun13.formFactor = 1 
minigun13.CanCollide = false 
minigun13.Name = "Part13" 
minigun13.Locked = true 
minigun13.Size = Vector3.new(1,1,1) 
minigun13.Parent = model2 
minigun13.BrickColor = BrickColor.new("Black") 
local minigun14 = Instance.new("Part") 
minigun14.formFactor = 1 
minigun14.CanCollide = false 
minigun14.Name = "Part14" 
minigun14.Locked = true 
minigun14.Size = Vector3.new(1,2,1) 
minigun14.Parent = model2 
minigun14.BrickColor = BrickColor.new("Black") 
local minigun15 = Instance.new("Part") 
minigun15.formFactor = 1 
minigun15.CanCollide = false 
minigun15.Name = "Part15" 
minigun15.Locked = true 
minigun15.Size = Vector3.new(1,1,1) 
minigun15.Parent = model2 
minigun15.BrickColor = BrickColor.new("Black") 
local minigun16 = Instance.new("Part") 
minigun16.formFactor = 1 
minigun16.CanCollide = false 
minigun16.Name = "Part16" 
minigun16.Locked = true 
minigun16.Size = Vector3.new(1,2,1) 
minigun16.Parent = model2 
minigun16.BrickColor = BrickColor.new("Black") 
local minigun17 = Instance.new("Part") 
minigun17.formFactor = 1 
minigun17.CanCollide = false 
minigun17.Name = "Part17" 
minigun17.Locked = true 
minigun17.Size = Vector3.new(1,1,1) 
minigun17.Parent = model2 
minigun17.BrickColor = BrickColor.new("Black") 
local minigun18 = Instance.new("Part") 
minigun18.formFactor = 1 
minigun18.CanCollide = false 
minigun18.Name = "Part18" 
minigun18.Locked = true 
minigun18.Size = Vector3.new(1,1,1) 
minigun18.Parent = model2 
minigun18.BrickColor = BrickColor.new("Black") 
local minigun19 = Instance.new("Part") 
minigun19.formFactor = 1 
minigun19.CanCollide = false 
minigun19.Name = "Part19" 
minigun19.Locked = true 
minigun19.Size = Vector3.new(1,1,1) 
minigun19.Parent = model2 
minigun19.BrickColor = BrickColor.new("Black") 
local minigun20 = Instance.new("Part") 
minigun20.formFactor = 1 
minigun20.CanCollide = false 
minigun20.Name = "Part20" 
minigun20.Locked = true 
minigun20.Size = Vector3.new(1,1,1) 
minigun20.Parent = model2 
minigun20.BrickColor = BrickColor.new("Black") 
local minigun21 = Instance.new("Part") 
minigun21.formFactor = 1 
minigun21.CanCollide = false 
minigun21.Name = "Part21" 
minigun21.Locked = true 
minigun21.Size = Vector3.new(1,1,1) 
minigun21.Parent = model2 
minigun21.BrickColor = BrickColor.new("Black") 
local minigun22 = Instance.new("Part") 
minigun22.formFactor = 1 
minigun22.CanCollide = false 
minigun22.Name = "Part22" 
minigun22.Locked = true 
minigun22.Size = Vector3.new(1,1,1) 
minigun22.Parent = model2 
minigun22.BrickColor = BrickColor.new("Black") 
local minigun23 = Instance.new("Part") 
minigun23.formFactor = 1 
minigun23.CanCollide = false 
minigun23.Name = "Part23" 
minigun23.Locked = true 
minigun23.Size = Vector3.new(1,1,1) 
minigun23.Parent = model2 
minigun23.BrickColor = BrickColor.new("Black") 
local minigun24 = Instance.new("Part") 
minigun24.formFactor = 1 
minigun24.CanCollide = false 
minigun24.Name = "Part24" 
minigun24.Locked = true 
minigun24.Size = Vector3.new(1,1,1) 
minigun24.Parent = model2 
minigun24.BrickColor = BrickColor.new("Black") 
local minigun25 = Instance.new("Part") 
minigun25.formFactor = 1 
minigun25.CanCollide = false 
minigun25.Name = "Part25" 
minigun25.Locked = true 
minigun25.Size = Vector3.new(1,1,1) 
minigun25.Parent = model2 
minigun25.BrickColor = BrickColor.new("Black") 
local minigun26 = Instance.new("Part") 
minigun26.formFactor = 1 
minigun26.CanCollide = false 
minigun26.Name = "Part26" 
minigun26.Locked = true 
minigun26.Size = Vector3.new(1,1,1) 
minigun26.Parent = model2 
minigun26.BrickColor = BrickColor.new("Black") 
local minigun27 = Instance.new("Part") 
minigun27.formFactor = 1 
minigun27.CanCollide = false 
minigun27.Name = "Part27" 
minigun27.Locked = true 
minigun27.Size = Vector3.new(1,1,1) 
minigun27.Parent = model2 
minigun27.BrickColor = BrickColor.new("Black") 
local minigun28 = Instance.new("Part") 
minigun28.formFactor = 1 
minigun28.CanCollide = false 
minigun28.Name = "Barrel" 
minigun28.Locked = true 
minigun28.Size = Vector3.new(1,1,1) 
minigun28.Parent = model2 
minigun28.BrickColor = BrickColor.new("Black") 
local minigun29 = Instance.new("Part") 
minigun29.formFactor = 1 
minigun29.CanCollide = false 
minigun29.Name = "Part29" 
minigun29.Locked = true 
minigun29.Size = Vector3.new(1,2,1) 
minigun29.Parent = model2 
minigun29.BrickColor = BrickColor.new("Black") 
local minigun30 = minigun29:Clone() 
minigun30.Name = "Part30" 
minigun30.Size = Vector3.new(1,2,1) 
minigun30.Parent = model2 
local minigun31 = minigun29:Clone() 
minigun31.Name = "Part31" 
minigun31.Size = Vector3.new(1,2,1) 
minigun31.Parent = model2 
local minigun31 = minigun29:Clone() 
minigun31.Name = "Part31" 
minigun31.Size = Vector3.new(1,2,1) 
minigun31.Parent = model2 
local minigun32 = minigun29:Clone() 
minigun32.Name = "Part32" 
minigun32.Size = Vector3.new(1,2,1) 
minigun32.Parent = model2 
local minigun33 = minigun29:Clone() 
minigun33.Name = "Part33" 
minigun33.Size = Vector3.new(1,2,1) 
minigun33.Parent = model2 
local minigun34 = minigun29:Clone() 
minigun34.Name = "Part34" 
minigun34.Size = Vector3.new(1,2,1) 
minigun34.Parent = model2 
local minigun35 = Instance.new("Part") 
minigun35.formFactor = 1 
minigun35.CanCollide = false 
minigun35.Name = "Part35" 
minigun35.Locked = true 
minigun35.Size = Vector3.new(1,2,1) 
minigun35.Parent = model2 
minigun35.BrickColor = BrickColor.new("Black") 
local minigun36 = Instance.new("Part") 
minigun36.formFactor = 1 
minigun36.CanCollide = false 
minigun36.Name = "Part36" 
minigun36.Locked = true 
minigun36.Size = Vector3.new(1,2,1) 
minigun36.Parent = model2 
minigun36.BrickColor = BrickColor.new("Black") 
local minigun37 = minigun36:Clone() 
minigun37.Name = "Part37" 
minigun37.Size = Vector3.new(1,2,1) 
minigun37.Parent = model2 
local minigun38 = Instance.new("Part") 
minigun38.formFactor = 1 
minigun38.CanCollide = false 
minigun38.Name = "Part38" 
minigun38.Locked = true 
minigun38.Size = Vector3.new(1,1,1) 
minigun38.Parent = model2 
minigun38.BrickColor = BrickColor.new("Black") 
 
local mesh1 = Instance.new("BlockMesh") 
mesh1.Parent = minigun1 
mesh1.Scale = Vector3.new(0.3,1,0.3) 
local mesh2 = Instance.new("BlockMesh") 
mesh2.Parent = minigun2 
mesh2.Scale = Vector3.new(0.3,0.4,0.3) 
local mesh3 = Instance.new("BlockMesh") 
mesh3.Parent = minigun3 
mesh3.Scale = Vector3.new(0.3,0.8,0.3) 
local mesh4 = Instance.new("BlockMesh") 
mesh4.Parent = minigun4 
mesh4.Scale = Vector3.new(0.3,1.1,0.3) 
local mesh5 = Instance.new("BlockMesh") 
mesh5.Parent = minigun5 
mesh5.Scale = Vector3.new(0.3,1.1,0.3) 
local mesh6 = Instance.new("BlockMesh") 
mesh6.Parent = minigun6 
mesh6.Scale = Vector3.new(0.3,0.7,0.3) 
local mesh7 = Instance.new("BlockMesh") 
mesh7.Parent = minigun7 
mesh7.Scale = Vector3.new(0.3,1.45,0.3) 
local mesh8 = Instance.new("BlockMesh") 
mesh8.Parent = minigun8 
mesh8.Scale = Vector3.new(0.3,0.5,0.3) 
local mesh9 = Instance.new("CylinderMesh") 
mesh9.Parent = minigun9 
mesh9.Scale = Vector3.new(0.8,0.3,0.8) 
local mesh10 = Instance.new("CylinderMesh") 
mesh10.Parent = minigun10 
mesh10.Scale = Vector3.new(0.75,0.1,0.75) 
local mesh11 = Instance.new("CylinderMesh") 
mesh11.Parent = minigun11 
mesh11.Scale = Vector3.new(0.74,0.5,0.74) 
local mesh12 = Instance.new("BlockMesh") 
mesh12.Parent = minigun12 
mesh12.Scale = Vector3.new(0.5,0.5,0.5) 
local mesh13 = Instance.new("CylinderMesh") 
mesh13.Parent = minigun13 
mesh13.Scale = Vector3.new(0.2,0.2,0.2) 
local mesh14 = Instance.new("CylinderMesh") 
mesh14.Parent = minigun14 
mesh14.Scale = Vector3.new(0.15,0.69,0.15) 
local mesh15 = Instance.new("BlockMesh") 
mesh15.Parent = minigun15 
mesh15.Scale = Vector3.new(0.2,0.2,0.2) 
local mesh16 = Instance.new("CylinderMesh") 
mesh16.Parent = minigun16 
mesh16.Scale = Vector3.new(0.15,0.5,0.15) 
local mesh17 = Instance.new("CylinderMesh") 
mesh17.Parent = minigun17 
mesh17.Scale = Vector3.new(0.2,0.2,0.2) 
local mesh18 = Instance.new("BlockMesh") 
mesh18.Parent = minigun18 
mesh18.Scale = Vector3.new(0.35,0.35,0.35) 
local mesh19 = Instance.new("CylinderMesh") 
mesh19.Parent = minigun19 
mesh19.Scale = Vector3.new(0.3,0.2,0.3) 
local mesh20 = Instance.new("BlockMesh") 
mesh20.Parent = minigun20 
mesh20.Scale = Vector3.new(0.3,0.7,0.3) 
local mesh21 = Instance.new("BlockMesh") 
mesh21.Parent = minigun21 
mesh21.Scale = Vector3.new(0.6,0.6,0.6) 
local mesh22 = Instance.new("BlockMesh") 
mesh22.Parent = minigun22 
mesh22.Scale = Vector3.new(0.2,0.6,0.2) 
local mesh23 = Instance.new("BlockMesh") 
mesh23.Parent = minigun23 
mesh23.Scale = Vector3.new(0.2,0.6,0.2) 
local mesh24 = Instance.new("BlockMesh") 
mesh24.Parent = minigun24 
mesh24.Scale = Vector3.new(0.2,0.3,0.2) 
local mesh25 = Instance.new("CylinderMesh") 
mesh25.Parent = minigun25 
mesh25.Scale = Vector3.new(0.2,0.6,0.2) 
local mesh26 = Instance.new("CylinderMesh") 
mesh26.Parent = minigun26 
mesh26.Scale = Vector3.new(0.7,1.3,0.7) 
local mesh27 = Instance.new("CylinderMesh") 
mesh27.Parent = minigun27 
mesh27.Scale = Vector3.new(0.8,0.5,0.8) 
local mesh28 = Instance.new("CylinderMesh") 
mesh28.Parent = minigun28 
mesh28.Scale = Vector3.new(0.9,0.3,0.9) 
local mesh29 = Instance.new("CylinderMesh") 
mesh29.Parent = minigun29 
mesh29.Scale = Vector3.new(0.3,1.1,0.3) 
local mesh30 = mesh29:Clone() 
mesh30.Parent = minigun30 
local mesh31 = mesh29:Clone() 
mesh31.Parent = minigun31 
local mesh32 = mesh29:Clone() 
mesh32.Parent = minigun32 
local mesh33 = mesh29:Clone() 
mesh33.Parent = minigun33 
local mesh34 = mesh29:Clone() 
mesh34.Parent = minigun34 
local mesh35 = Instance.new("CylinderMesh") 
mesh35.Parent = minigun35 
mesh35.Scale = Vector3.new(1,0.2,1) 
local mesh36 = Instance.new("CylinderMesh") 
mesh36.Parent = minigun36 
mesh36.Scale = Vector3.new(1,0.05,1) 
local mesh37 = mesh36:Clone() 
mesh37.Parent = minigun37 
local mesh38 = Instance.new("SpecialMesh") 
mesh38.Parent = minigun38 
mesh38.MeshId = "http://www.roblox.com/asset/?id=3270017" 
mesh38.Scale = Vector3.new(1,1,8) 
 
local leftfistweld = Instance.new("Weld") 
leftfistweld.Parent = model1 
leftfistweld.Part0 = leftfist 
leftfistweld.Part1 = LeftArm 
local rightfistweld = Instance.new("Weld") 
rightfistweld.Parent = model1 
rightfistweld.Part0 = rightfist 
rightfistweld.Part1 = RightArm 
local sashaweld1 = Instance.new("Weld") 
sashaweld1.Parent = minigun1 
sashaweld1.Part0 = minigun1 
sashaweld1.Part1 = RightArm 
sashaweld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 
local sashaweld2 = Instance.new("Weld") 
sashaweld2.Parent = minigun2 
sashaweld2.Part0 = minigun2 
sashaweld2.Part1 = minigun1 
sashaweld2.C0 = CFrame.fromEulerAnglesXYZ(2,0,0) * CFrame.new(0,0.5,0.3) 
local sashaweld3 = Instance.new("Weld") 
sashaweld3.Parent = minigun3 
sashaweld3.Part0 = minigun3 
sashaweld3.Part1 = minigun2 
sashaweld3.C0 = CFrame.fromEulerAnglesXYZ(-1.5,0,0) * CFrame.new(0,-0.2,-0.2) 
local sashaweld4 = Instance.new("Weld") 
sashaweld4.Parent = minigun4 
sashaweld4.Part0 = minigun4 
sashaweld4.Part1 = minigun3 
sashaweld4.C0 = CFrame.fromEulerAnglesXYZ(2.3,0,0) * CFrame.new(0,-0.8,-0.45) 
local sashaweld5 = Instance.new("Weld") 
sashaweld5.Parent = minigun5 
sashaweld5.Part0 = minigun5 
sashaweld5.Part1 = minigun3 
sashaweld5.C0 = CFrame.fromEulerAnglesXYZ(-2.3,0,0) * CFrame.new(0,-1.5,-0.45) 
local sashaweld6 = Instance.new("Weld") 
sashaweld6.Parent = minigun6 
sashaweld6.Part0 = minigun6 
sashaweld6.Part1 = minigun1 
sashaweld6.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,-0.5,0.2) 
local sashaweld7 = Instance.new("Weld") 
sashaweld7.Parent = minigun7 
sashaweld7.Part0 = minigun7 
sashaweld7.Part1 = minigun3 
sashaweld7.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,0,0.9) 
local sashaweld8 = Instance.new("Weld") 
sashaweld8.Parent = minigun8 
sashaweld8.Part0 = minigun8 
sashaweld8.Part1 = minigun7 
sashaweld8.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,-0.7,-0.3) 
local sashaweld9 = Instance.new("Weld") 
sashaweld9.Parent = minigun9 
sashaweld9.Part0 = minigun9 
sashaweld9.Part1 = minigun8 
sashaweld9.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.6,-0.2) 
local sashaweld10 = Instance.new("Weld") 
sashaweld10.Parent = minigun10 
sashaweld10.Part0 = minigun10 
sashaweld10.Part1 = minigun9 
sashaweld10.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.45,0) 
local sashaweld11 = Instance.new("Weld") 
sashaweld11.Parent = minigun11 
sashaweld11.Part0 = minigun11 
sashaweld11.Part1 = minigun10 
sashaweld11.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.7,0) 
local sashaweld12 = Instance.new("Weld") 
sashaweld12.Parent = minigun12 
sashaweld12.Part0 = minigun12 
sashaweld12.Part1 = minigun9 
sashaweld12.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.7) 
local sashaweld13 = Instance.new("Weld") 
sashaweld13.Parent = minigun13 
sashaweld13.Part0 = minigun13 
sashaweld13.Part1 = minigun12 
sashaweld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.3,-0.15) 
local sashaweld14 = Instance.new("Weld") 
sashaweld14.Parent = minigun14 
sashaweld14.Part0 = minigun14 
sashaweld14.Part1 = minigun13 
sashaweld14.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.85,0) 
local sashaweld15 = Instance.new("Weld") 
sashaweld15.Parent = minigun15 
sashaweld15.Part0 = minigun15 
sashaweld15.Part1 = minigun14 
sashaweld15.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.85,0) 
local sashaweld16 = Instance.new("Weld") 
sashaweld16.Parent = minigun16 
sashaweld16.Part0 = minigun16 
sashaweld16.Part1 = minigun15 
sashaweld16.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,0,0.6) 
local sashaweld17 = Instance.new("Weld") 
sashaweld17.Parent = minigun17 
sashaweld17.Part0 = minigun17 
sashaweld17.Part1 = minigun16 
sashaweld17.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.5,0) 
local sashaweld18 = Instance.new("Weld") 
sashaweld18.Parent = minigun18 
sashaweld18.Part0 = minigun18 
sashaweld18.Part1 = minigun11 
sashaweld18.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.5,0) 
local sashaweld19 = Instance.new("Weld") 
sashaweld19.Parent = minigun19 
sashaweld19.Part0 = minigun19 
sashaweld19.Part1 = minigun18 
sashaweld19.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,0.3,0) 
local sashaweld20 = Instance.new("Weld") 
sashaweld20.Parent = minigun20 
sashaweld20.Part0 = minigun20 
sashaweld20.Part1 = minigun5 
sashaweld20.C0 = CFrame.fromEulerAnglesXYZ(2.3,0,0) * CFrame.new(0,0.83,0.26) 
local sashaweld21 = Instance.new("Weld") 
sashaweld21.Parent = minigun21 
sashaweld21.Part0 = minigun21 
sashaweld21.Part1 = minigun20 
sashaweld21.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.5,0.15) 
local sashaweld22 = Instance.new("Weld") 
sashaweld22.Parent = minigun22 
sashaweld22.Part0 = minigun22 
sashaweld22.Part1 = minigun21 
sashaweld22.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(-0.16,0.1,-0.3) 
local sashaweld23 = Instance.new("Weld") 
sashaweld23.Parent = minigun23 
sashaweld23.Part0 = minigun23 
sashaweld23.Part1 = minigun21 
sashaweld23.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0.16,0.1,-0.3) 
local sashaweld24 = Instance.new("Weld") 
sashaweld24.Parent = minigun24 
sashaweld24.Part0 = minigun24 
sashaweld24.Part1 = minigun23 
sashaweld24.C0 = CFrame.fromEulerAnglesXYZ(1.57,1.57,0) * CFrame.new(-0.2,0.26,0) 
local sashaweld25 = Instance.new("Weld") 
sashaweld25.Parent = minigun25 
sashaweld25.Part0 = minigun25 
sashaweld25.Part1 = minigun7 
sashaweld25.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,0.3,-0.1) 
local sashaweld26 = Instance.new("Weld") 
sashaweld26.Parent = minigun26 
sashaweld26.Part0 = minigun26 
sashaweld26.Part1 = minigun25 
sashaweld26.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1,0) 
local sashaweld27 = Instance.new("Weld") 
sashaweld27.Parent = minigun27 
sashaweld27.Part0 = minigun27 
sashaweld27.Part1 = minigun26 
sashaweld27.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1,0) 
local sashaweld28 = Instance.new("Weld") 
sashaweld28.Parent = minigun28 
sashaweld28.Part0 = minigun28 
sashaweld28.Part1 = minigun27 
sashaweld28.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.2,0) 
local sashaweld29 = Instance.new("Weld") 
sashaweld29.Parent = minigun29 
sashaweld29.Part0 = minigun29 
sashaweld29.Part1 = minigun28 
sashaweld29.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.24,1.2,-0.16) 
local sashaweld30 = Instance.new("Weld") 
sashaweld30.Parent = minigun30 
sashaweld30.Part0 = minigun30 
sashaweld30.Part1 = minigun28 
sashaweld30.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.24,1.2,0.16) 
local sashaweld31 = Instance.new("Weld") 
sashaweld31.Parent = minigun31 
sashaweld31.Part0 = minigun31 
sashaweld31.Part1 = minigun28 
sashaweld31.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.2,0.35) 
local sashaweld32 = Instance.new("Weld") 
sashaweld32.Parent = minigun32 
sashaweld32.Part0 = minigun32 
sashaweld32.Part1 = minigun28 
sashaweld32.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.24,1.2,0.16) 
local sashaweld33 = Instance.new("Weld") 
sashaweld33.Parent = minigun33 
sashaweld33.Part0 = minigun33 
sashaweld33.Part1 = minigun28 
sashaweld33.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.24,1.2,-0.16) 
local sashaweld34 = Instance.new("Weld") 
sashaweld34.Parent = minigun34 
sashaweld34.Part0 = minigun34 
sashaweld34.Part1 = minigun28 
sashaweld34.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.2,-0.35) 
local sashaweld35 = Instance.new("Weld") 
sashaweld35.Parent = minigun35 
sashaweld35.Part0 = minigun35 
sashaweld35.Part1 = minigun28 
sashaweld35.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.8,0) 
local sashaweld36 = Instance.new("Weld") 
sashaweld36.Parent = minigun36 
sashaweld36.Part0 = minigun36 
sashaweld36.Part1 = minigun28 
sashaweld36.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.5,0) 
local sashaweld37 = Instance.new("Weld") 
sashaweld37.Parent = minigun37 
sashaweld37.Part0 = minigun37 
sashaweld37.Part1 = minigun28 
sashaweld37.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.7,0) 
local sashaweld38 = Instance.new("Weld") 
sashaweld38.Parent = minigun38 
sashaweld38.Part0 = minigun38 
sashaweld38.Part1 = minigun28 
sashaweld38.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,2.5,0) 
 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Heavy" 
script.Parent = Tool 
end 
Bin = script.Parent 
 
function unequipweld() 
model1.Parent = nil 
model2.Parent = nil 
model3.Parent = nil 
end 
 
function equipanim() 
if mode == "Fists" then 
for i = 0 , 1 , 0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5+0.3*i,0.5,-0.3*i) * CFrame.fromEulerAnglesXYZ(1.7*i,0,0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.3*i,0.5,-0.3*i) * CFrame.fromEulerAnglesXYZ(1.7*i,0,-0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
elseif mode == "Minigun" then 
for i = 0 , 1 , 0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5+1.5*i,0.5,-1.4*i) * CFrame.fromEulerAnglesXYZ(1.7*i,0,0.9*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.2*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end 
-- 9650882
 
function equipweld() 
if mode == "Fists" then 
model1.Parent = workspace 
rightfistweld.Parent = rightfist 
leftfistweld.Parent = leftfist 
elseif mode == "Minigun" then 
model2.Parent = workspace 
sashaweld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 
end 
end 
 
function OT(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage) 
end 
 
end 
 
function ss(parent,pitch) 
 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function startup(parent,pitch) 
 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209788" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function winddown(parent,pitch) 
 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209786" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
 
function shoot(parent,pitch) 
 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209798" 
SlashSound.Parent = workspace 
SlashSound.Volume = .2 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
 
function Punch() 
attack = true 
wait() 
local either = math.random(1,2) 
if either == 1 then 
ss(LeftArm,0.8) 
con1=leftfist.Touched:connect(function(hit) Damagefunc1(hit,10,10) end)
for i = 0 , 1 , 0.2 do 
wait()  
LW.C0 = CFrame.new(-1.2+0.4*i,0.5,-0.3-0.5*i) * CFrame.fromEulerAnglesXYZ(1.7,0,0.3+0.2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
for i = 0 , 1 , 0.2 do 
wait()  
LW.C0 = CFrame.new(-1.2+0.4-0.4*i,0.5,-0.3-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.7,0,0.3+0.2-0.2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
elseif either == 2 then 
ss(RightArm,0.8) 
con2=rightfist.Touched:connect(function(hit) Damagefunc1(hit,10,10) end)
for i = 0 , 1 , 0.2 do 
wait()  
RW.C0 = CFrame.new(1.2-0.4*i,0.5,-0.3-0.5*i) * CFrame.fromEulerAnglesXYZ(1.7,0,-0.3-0.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con2:disconnect() 
for i = 0 , 1 , 0.2 do 
wait()  
RW.C0 = CFrame.new(1.2-0.4+0.4*i,0.5,-0.3-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.7,0,-0.3-0.2+0.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
attack = false 
end 
 
function minigunshoop() 
attack = true 
if readytoshoot == false then 
startup(minigun28,1) 
Character.Humanoid.WalkSpeed = 10 
for i = 0 , 1 , 0.05 do 
wait(0)  
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.2+0.37*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
sashaweld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+1.1*i,0,0) * CFrame.new(0,1,0) 
sashaweld28.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) * CFrame.new(0,0.2,0) 
end 
wait(0.5) 
end 
while hold == true do 
wait(0) 
boomeffect() 
bulletshoot() 
--Ammo() 
shoot(minigun28,0.9) 
sashaweld28.C0 = sashaweld28.C0 * CFrame.fromEulerAnglesXYZ(0,0.6,0) 
end 
if readytoshoot == false then
winddown(minigun28,1) 
Character.Humanoid.WalkSpeed = 16 
for i = 0 , 1 , 0.05 do 
wait(0)  
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.2+0.37-0.37*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5+1.5,0.5,-1.4) * CFrame.fromEulerAnglesXYZ(1.7,0,0.9) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
sashaweld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+1.1-1.1*i,0,0) * CFrame.new(0,1,0) 
sashaweld28.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) * CFrame.new(0,0.2,0) 
end 
attack = false 
end 
end 
 
function Taunt() 
for i = 0 , 1 , 0.1 do 
wait()  
LW.C0 = CFrame.new(-1.2-0.3*i,0.5,-0.3+0.3*i) * CFrame.fromEulerAnglesXYZ(1.7-1.7*i,0,0.3-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.2+0.3*i,0.5,-0.3+0.3*i) * CFrame.fromEulerAnglesXYZ(1.7-1.7*i,0,-0.3+0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
for i = 1 , 2 do 
wait(0) 
ss(LeftArm,0.8) 
for i = 0 , 1 , 0.2 do 
wait()  
LW.C0 = CFrame.new(-1.2-0.3+0.3*i,0.5+0.3*i,-0.3*i) * CFrame.fromEulerAnglesXYZ(1.6*i,1.57*i,0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+1*i,0,0) 
end 
wait(0.2) 
for i = 0 , 1 , 0.1 do 
wait()  
LW.C0 = CFrame.new(-1.2-0.3*i,0.5+0.3-0.3*i,-0.3+0.3*i) * CFrame.fromEulerAnglesXYZ(1.6-1.6*i,1.57-1.57*i,0.3-0.6*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+1-0.5*i,0,0) 
end 
ss(LeftArm,0.8) 
for i = 0 , 1 , 0.2 do 
wait() 
RW.C0 = CFrame.new(1.2+0.3-0.3*i,0.5+0.3*i,-0.3*i) * CFrame.fromEulerAnglesXYZ(1.6*i,-1.57*i,-0.3) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+1*i,0,0) 
end 
wait(0.2) 
for i = 0 , 1 , 0.2 do 
wait() 
RW.C0 = CFrame.new(1.2+0.3*i,0.5+0.3-0.3*i,-0.3+0.3*i) * CFrame.fromEulerAnglesXYZ(1.6-1.6*i,-1.57+1.57*i,-0.3+0.6*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+1-0.5*i,0,0) 
end 
end 
equipanim() 
end 
 
function readyshoot() 
attack = true 
readytoshoot = false 
startup(minigun28,1) 
Character.Humanoid.WalkSpeed = 10 
for i = 0 , 1 , 0.05 do 
wait(0)  
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.2+0.37*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
sashaweld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+1.1*i,0,0) * CFrame.new(0,1,0) 
sashaweld28.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) * CFrame.new(0,0.2,0) 
end 
attack = false 
while readytoshoot == true do 
wait(0) 
attack = false 
sashaweld28.C0 = sashaweld28.C0 * CFrame.fromEulerAnglesXYZ(0,0.6,0) 
end 
attack = true 
readytoshoot = false 
winddown(minigun28,1) 
Character.Humanoid.WalkSpeed = 16 
for i = 0 , 1 , 0.05 do 
wait(0)  
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.2+0.37-0.37*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5+1.5,0.5,-1.4) * CFrame.fromEulerAnglesXYZ(1.7,0,0.9) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
sashaweld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+1.1-1.1*i,0,0) * CFrame.new(0,1,0) 
sashaweld28.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) * CFrame.new(0,0.2,0) 
end 
readytoshoot = false 
attack = false 
end 
 
function changeequipleft() 
if Number > 1 then 
Number = Number - 1 
mode = Modes[Number] 
unequipweld() 
equipweld() 
equipanim() 
end 
end 
 
function changeequipright() 
if Number < #Modes then 
Number = Number + 1 
mode = Modes[Number] 
unequipweld() 
equipweld() 
equipanim() 
end 
end 
 
function boomeffect() 
local mesh = Instance.new("SpecialMesh") 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(1,1,1)
local shell = Instance.new("Part") 
mesh.Parent = shell 
shell.Anchored = true 
shell.formFactor = 1 
shell.Size = Vector3.new(1,2,1) 
shell.CFrame = minigun37.CFrame * CFrame.new(0,-2,0) * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) 
shell.Parent = game.workspace 
shell.Transparency = 0.2 
shell.BrickColor = BrickColor.new("Bright yellow") 
shell.CanCollide = false 
coroutine.resume(coroutine.create(function(shel) 
wait() 
shel.Parent = nil 
end),shell) 
end 
 
function bulletshoot() 
local freakingbullet = Instance.new("Part") 
freakingbullet.formFactor = 1 
freakingbullet.Parent = workspace 
freakingbullet.CanCollide = false 
freakingbullet.BrickColor = BrickColor.new("New Yeller") 
freakingbullet.Name = "Bullet" 
freakingbullet.Size = Vector3.new(1,3,1) 
freakingbullet.CFrame = Torso.CFrame 
--freakingbullet.CFrame = minigun38.CFrame * CFrame.new(0,-0.5,0) 
freakingbullet.CFrame = minigun27.CFrame * CFrame.new(0,-1.1,-0.25) 
freakingbullet.Velocity = minigun38.CFrame.lookVector * 300 
--freakingbullet.Velocity = freakingbullet.CFrame.lookVector * 300 
local freakingbulmsh = Instance.new("CylinderMesh") 
freakingbulmsh.Parent = freakingbullet 
freakingbulmsh.Scale = Vector3.new(1.1,1.5,0.15) 
local force = Instance.new("BodyForce") 
force.Parent = freakingbullet 
force.force = Vector3.new(0,450,0) 
coroutine.resume(coroutine.create(function() 
while freakingbullet.Parent ~= nil do --I use this function instead of the touch function :3
wait() 
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Torso");
                if head ~= nil then
                local targ = head.Position - freakingbullet.Position;
                local mag = targ.magnitude;
                if mag <= 6 and c[i].Name ~= Player.Name then
                hum:TakeDamage(5)
                v=Instance.new("BodyVelocity")
                v.P=1000
                v.maxForce=Vector3.new(math.huge,0,math.huge)
                v.velocity=Torso.CFrame.lookVector*25+Torso.Velocity/1.05
                v.Parent=hum.Parent.Torso
                Blood=Instance.new("Part")
                Blood.Name="Blood"
                Blood.TopSurface="Smooth"
                Blood.BottomSurface="Smooth"
                Blood.formFactor="Plate"
                Blood.BrickColor=BrickColor:Red()
                Blood.Size=Vector3.new(1,.4,1)
                Blood.Velocity=Vector3.new(math.random(-4,4),math.random(5,25),math.random(-4,4))
                Blood.CFrame=head.CFrame 
                Blood.Parent=workspace 
                coroutine.resume(coroutine.create(function(vel,blod) 
                wait(0.3) 
                vel.Parent = nil 
                wait(2) 
                blod.Parent = nil 
                end),v,Blood) 
                game:GetService("Debris"):AddItem(v,.1)
                freakingbullet.Parent = nil 
                end
                end
                end
        end
end 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
freakingbullet.Parent = nil 
end)) 
end 
 
function Ammo() 
local shellz = Instance.new("Part")
local shellmsh = Instance.new("CylinderMesh")
shellmsh.Scale = Vector3.new(0.25,0.5,0.25)
shellmsh.Parent = shellz
shellz.Position = minigun11.Position + Vector3.new(0,2,0) 
shellz.Parent = game.Workspace
shellz.Size = Vector3.new(1,1,1)
shellz.CFrame = minigun11.CFrame + Vector3.new(0,0,0) 
shellz.BrickColor = BrickColor.new("Bright yellow")
shellz.Anchored = false
shellz.CanCollide = false 
shellz.BottomSurface = "Smooth" 
shellz.TopSurface = "Smooth" 
shellz.Velocity = Vector3.new(math.random(5,30),math.random(5,30),math.random(-20,-5)) 
game:GetService("Debris"):addItem(shellz,2) 
end 
 
Damagefunc1=function(hit,Damage,Knockback)
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.1) 
        attackdebounce = false 
        end)) 
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent~=Character and hit.Parent:FindFirstChild("Torso")~=nil then
                Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
                if math.random(1,10)==1 then
                        CRIT=true
                        Damage=Damage*2
                        Knockback=Knockback*2
                        r=Instance.new("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
                        r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso
                        s=Instance.new("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                Damage=Damage+math.random(0,10) 
                BloodRandom = math.random(1,5) 
                if CRIT == true then 
                BloodRandom = BloodRandom * 5 
                end 
                for i = 0,BloodRandom do 
                Blood=Instance.new("Part")
                Blood.Name="Blood"
                Blood.TopSurface="Smooth"
                Blood.BottomSurface="Smooth"
                Blood.formFactor="Plate"
                Blood.BrickColor=BrickColor:Red()
                Blood.Size=Vector3.new(1,.4,1)
                Blood.Velocity=Vector3.new(math.random(-2,2),math.random(5,10),math.random(-2,2))
                Blood.CFrame=hit.CFrame * CFrame.new(math.random(-1,1),math.random(-1,1),math.random(-1,1)) 
                Blood.Parent=workspace 
                coroutine.resume(coroutine.create(function(blod) 
                wait(2) 
                blod.Parent = nil 
                end),Blood) 
                end 
                h:TakeDamage(Damage)
--                showDamage(hit.Parent,Damage,.5)
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.25)
--[[                r=Instance.new("BodyAngularVelocity")
                r.P=3000
                r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
                r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                r.Parent=hit.Parent.Torso]]
                game:GetService("Debris"):AddItem(r,.5)
                                c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
        end 
end
 
showDamage=function(Char,Dealt,du)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.CanCollide=false 
        if CRIT==true then
                c.BrickColor=BrickColor.new("New Yeller")
        else 
                c.BrickColor=BrickColor.new("Bright red")
        end
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1.25,1.5,1.25)
        end
        ms.Parent=c
        c.Reflectance=0
        Instance.new("BodyGyro").Parent=c
        c.Parent=m
        c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        f=Instance.new("BodyPosition")
        f.P=2000
        f.D=100
        f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
        f.position=c.Position+Vector3.new(0,3,0)
        f.Parent=c
        game:GetService("Debris"):AddItem(m,.5+du)
        c.CanCollide=false
        m.Parent=workspace
        c.CanCollide=false
end
 
hold = false 
 
function ob1d(mouse) 
hold = true 
if attack == true then return end 
if mode == "Fists" then 
Punch() 
elseif mode == "Minigun" then 
getPos=function(Pos,TorsoPos)
        return Vector3.new(Pos.x,TorsoPos.y,Pos.z)
end 
coroutine.resume(coroutine.create(function() 
while hold == true do 
wait() 
g.cframe=CFrame.new(Torso.Position,getPos(mouse.Hit.p,Torso.Position))
offset=(Torso.Position.y-mouse.Hit.p.y)/60
mag=(Torso.Position-mouse.Hit.p).magnitude/80
offset=offset/mag 
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(offset,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.2+0.37-offset,0,0) 
LW.C0 = CFrame.new(-1.5+1.5,0.5,-1.4) * CFrame.fromEulerAnglesXYZ(1.7,-offset,0.9) 
end 
Torso.Neck.C0=necko
end)) 
minigunshoop() 
end 
end 
 
function ob1u(mouse) 
hold = false 
end 
 
buttonhold = false 
 
function key(key) 
if key == "z" then 
if mode == "Fists" then 
Taunt() 
elseif mode == "Minigun" then 
readyshoot() 
end 
end 
if attack == true then return end 
if readytoshoot == true then return end 
if key == "q" then 
changeequipleft() 
end 
if key == "e" then 
changeequipright() 
end 
end 
 
function key2(key) 
if key == "z" then 
readytoshoot = false 
end 
end 
 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
        g=Instance.new("BodyGyro")
        g.P=18000
        g.D=600
        g.maxTorque=Vector3.new(80000,80000000,80000)*50000000000000000000000000
        g.cframe=Torso.CFrame
equipweld() 
player = Player 
ch = Character 
equipped = true 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
-- 
RW.Part0 = ch.Torso 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
_G.L = LW 
--
equipanim() 
end 
 
function ds(mouse) 
equipped = false 
unequipweld() 
wait(0.1) 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
 
while true do 
wait() 
if equipped == true then 
rightfistweld.Parent = rightfist 
leftfistweld.Parent = leftfist 
model1.Parent = workspace 
if mode == "Fists" then 
elseif mode == "Minigun" then 
model2.Parent = workspace 
sashaweld1.Parent = minigun1 
sashaweld2.Parent = minigun2 
sashaweld3.Parent = minigun3 
sashaweld4.Parent = minigun4 
sashaweld5.Parent = minigun5 
sashaweld6.Parent = minigun6 
sashaweld7.Parent = minigun7 
sashaweld8.Parent = minigun8 
sashaweld9.Parent = minigun9 
sashaweld10.Parent = minigun10 
sashaweld11.Parent = minigun11 
sashaweld12.Parent = minigun12 
sashaweld13.Parent = minigun13 
sashaweld14.Parent = minigun14 
sashaweld15.Parent = minigun15 
sashaweld16.Parent = minigun16 
sashaweld17.Parent = minigun17 
sashaweld18.Parent = minigun18 
sashaweld19.Parent = minigun19 
sashaweld20.Parent = minigun20 
sashaweld21.Parent = minigun21 
sashaweld22.Parent = minigun22 
sashaweld23.Parent = minigun23 
sashaweld24.Parent = minigun24 
sashaweld25.Parent = minigun25 
sashaweld26.Parent = minigun26 
sashaweld27.Parent = minigun27 
sashaweld28.Parent = minigun28 
sashaweld29.Parent = minigun29 
sashaweld30.Parent = minigun30 
sashaweld31.Parent = minigun31 
sashaweld32.Parent = minigun32 
sashaweld33.Parent = minigun33 
sashaweld34.Parent = minigun34 
sashaweld35.Parent = minigun35 
sashaweld36.Parent = minigun36 
sashaweld37.Parent = minigun37 
sashaweld38.Parent = minigun38 
end 
end 
end 
--mediafire