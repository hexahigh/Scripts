--AssAssin Suit Gifted by Rosemarijohn2, Regular Script!


Person = game.Players.SPEZ23
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Person.Backpack 
Tool.Name = "Tool" 
script.Parent = Tool 
G = Instance.new("GuiMain") 
G.Parent = Person.PlayerGui 
G.Name = "MahGoey" 
F = Instance.new("Frame") 
F.Parent = G 
T = Instance.new("TextLabel") 
T.Parent = F 
T.Name = "Tool" 
T.Text = "Blade" 
T.Size = UDim2.new(0, 100, 0, 40) 
T.Position = UDim2.new(0, 0, 0, 150) 
T.BorderSizePixel = 0 
T.BackgroundColor3 = Color3.new(0, 0, 0) 
T.TextColor3 = Color3.new(1, 1, 1) 
T.BackgroundTransparency = 0.3 
M = Instance.new("TextLabel") 
M.Parent = F 
M.Name = "Mode" 
M.Text = "Standard" 
M.Size = UDim2.new(0, 100, 0, 40) 
M.Position = UDim2.new(0, 0, 0, 190) 
M.BorderSizePixel = 0 
M.BackgroundColor3 = Color3.new(0, 0, 0) 
M.TextColor3 = Color3.new(1, 1, 1) 
M.BackgroundTransparency = 0.3 
end 
---------------------------------------------------------------------------------------------------------------------------------------------Variables 
Bin = script.Parent 
Grabbed = nil 
Debounce = false 
BladeOut = false 
Hold = false 
Suit = true 
Limbs = {Person.Character["Right Arm"], Person.Character["Left Arm"], Person.Character["Right Leg"], Person.Character["Left Leg"]} 
Joints = {Person.Character.Torso["Right Shoulder"], Person.Character.Torso["Left Shoulder"], Person.Character.Torso["Right Hip"], Person.Character.Torso["Left Hip"]} 
NewJoints = {nil, nil, nil, nil} 
ModeList = {{"Standard", "Breaker"}, {"Main"}, {"Death", "Ban", "Sleep", "Explosion"}} 
Tools = {"Blade", "Bomb", "Wand"} 
List = {} 
Mode = 1 
Tool = 1 
PreferredHand = 1 
PreferredFoot = 3 
UnPreferredHand = 0 
UnPreferredFoot = 0 
if (PreferredHand == 1) then 
UnPreferredHand = 2 
else 
UnPreferredHand = 1 
end 
if (PreferredFoot == 3) then 
UnPreferredFoot = 4 
else 
UnPreferredFoot = 3 
end 
---------------------------------------------------------------------------------------------------------------------------------------------Suit 
if (Person.Character:findFirstChild("Suit") ~= nil) then 
Person.Character.Suit:remove() 
end 
Suit = Instance.new("Model") 
Suit.Parent = Person.Character 
Suit.Name = "Suit" 
if (Person.Character:findFirstChild("Body Colors") ~= nil) then 
Person.Character["Body Colors"]:remove() 
end 
if (Person.Character.Torso:findFirstChild("roblox") ~= nil) then 
Person.Character.Torso.roblox:remove() 
end 
Person.Character.Torso.BrickColor = BrickColor.new("Really black") 
Limbs[4].BrickColor = Person.Character.Head.BrickColor 
Limbs[3].BrickColor = Person.Character.Head.BrickColor 
Limbs[2].BottomSurface = 0 
Limbs[1].BottomSurface = 0 

Blade = Instance.new("Model") 
Blade.Parent = Suit 
Blade.Name = "Blade" 
BandA = Instance.new("Part") 
BandA.Parent = Blade 
BandA.Name = "BandA" 
BandA.CanCollide = false 
BandA.BrickColor = BrickColor.new("White") 
BandA.TopSurface = 0 
BandA.BottomSurface = 0 
BandA.formFactor = "Symmetric" 
BandA.Size = Vector3.new(1, 1, 1) 
MeshA = Instance.new("BlockMesh") 
MeshA.Parent = BandA 
MeshA.Scale = Vector3.new(1.02, 0.1, 1.02) 
BandA:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = BandA 
Weld.Part0 = Limbs[PreferredHand] 
Weld.Part1 = BandA 
Weld.C0 = CFrame.new(0, -0.8, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
BandB = Instance.new("Part") 
BandB.Parent = Blade 
BandB.Name = "BandB" 
BandB.CanCollide = false 
BandB.BrickColor = BrickColor.new("White") 
BandB.TopSurface = 0 
BandB.BottomSurface = 0 
BandB.formFactor = "Symmetric" 
BandB.Size = Vector3.new(1, 1, 1) 
MeshB = Instance.new("BlockMesh") 
MeshB.Parent = BandB 
MeshB.Scale = Vector3.new(1.02, 0.1, 1.02) 
BandB:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = BandB 
Weld.Part0 = Limbs[PreferredHand] 
Weld.Part1 = BandB 
Weld.C0 = CFrame.new(0, -0.6, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
SlotA = Instance.new("Part") 
SlotA.Parent = Blade 
SlotA.Name = "SlotA" 
SlotA.CanCollide = false 
SlotA.BrickColor = BrickColor.new("Really black") 
SlotA.TopSurface = 0 
SlotA.BottomSurface = 0 
SlotA.formFactor = "Symmetric" 
SlotA.Size = Vector3.new(1, 1, 1) 
MeshA = Instance.new("BlockMesh") 
MeshA.Parent = SlotA 
MeshA.Scale = Vector3.new(0.1, 1, 0.3) 
SlotA:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = SlotA 
Weld.Part0 = Limbs[PreferredHand] 
Weld.Part1 = SlotA 
if (PreferredHand == 1) then 
Weld.C0 = CFrame.new(0.55, -0.4, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
else 
Weld.C0 = CFrame.new(-0.55, -0.4, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
end 
---------------------------------------------------------------------------------------------------------------------------------------------Wand 


---------------------------------------------------------------------------------------------------------------------------------------------Functions 
function DisableLimb(Limb) 
NJoint = Instance.new("Motor") 
NJoint.Parent = Person.Character.Torso 
NJoint.Name = Joints[Limb].Name 
NJoint.Part0 = Joints[Limb].Part0 
NJoint.Part1 = Joints[Limb].Part1 
NJoint.MaxVelocity = Joints[Limb].MaxVelocity 
NJoint.C0 = Joints[Limb].C0 
NJoint.C1 = Joints[Limb].C1 
Joints[Limb].Parent = nil 
NewJoints[Limb] = NJoint 
end 
function EnableLimb(Limb) 
Joints[Limb].Parent = Person.Character.Torso 
NewJoints[Limb]:remove() 
NewJoints[Limb] = nil 
end 


function Check(Table, Value) 
Results = false 
for W, V in pairs(Table) do 
if (V == Value) then 
Results = true 
end 
end 
return Results 
end 

function WeldOn(X, Y) 
Weld = Instance.new("Weld") 
Weld.Part0 = X 
Weld.Part1 = Y 

HitPos = X.Position 
CJ = CFrame.new(HitPos) 
C0 = X.CFrame:inverse() *CJ 
C1 = Y.CFrame:inverse() * CJ 
Weld.C0 = C0 
Weld.C1 = C1 
Weld.Parent = X 
end 
function TimeDelete(Object, Time) 
wait(Time) 
Object:remove() 
end 
function Touch(Hit, Missile) 
if (Hit ~= nil) then 
if (Hit.Parent ~= nil) then 
if (Check(List, Missile) == false) then 
Bool = Person.Character:IsAncestorOf(Hit) 
if (Bool == false) then 
if (Mode == 2) then 
Hit:BreakJoints() 
end 
if (Missile:findFirstChild("ArmWeld") == nil) then 
WeldOn(Missile, Hit) 
end 
if (Hit.Parent:findFirstChild("Humanoid") ~= nil) then 
if (Hit.Parent.Humanoid.Health > 0) then 
if (Mode == 1) then 
Hit.Parent:BreakJoints() 
end 
end 
end 
end 
end 
end 
end 
end 
function ChangeWeapon(Weapon, PrevWeapon) 
Hold = false 
if (PrevWeapon == 1) then 
if (BladeOut == true) then 
BladeOut = false 
if (Person.Character.Suit.Blade:findFirstChild("Blade") ~= nil) then 
if (Person.Character.Suit.Blade.Blade:findFirstChild("BladeA") ~= nil) then 
Num = 1.4 
for I = 1, 5 do 
if (PreferredHand == 1) then 
Person.Character.Suit.Blade.Blade.BladeA.ArmWeld.C0 = CFrame.new(0.55, -Num, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
else 
Person.Character.Suit.Blade.Blade.BladeA.ArmWeld.C0 = CFrame.new(-0.55, -Num, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
end 
Num = Num - 0.1 
wait(0.01) 
end 
end 
Person.Character.Suit.Blade.Blade:remove() 
end 
end 
end 
if (PrevWeapon == 3) then 
Person.Character.Wand:remove() 
end 

if (Weapon == 3) then 
WandA = Instance.new("Part") 
WandA.Parent = Person.Character 
WandA.Name = "Wand" 
WandA.CanCollide = false 
WandA.Transparency = 1 
WandA.BrickColor = BrickColor.new("Brown") 
WandA.TopSurface = 0 
WandA.BottomSurface = 0 
WandA.formFactor = "Symmetric" 
WandA.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("CylinderMesh") 
Mesh.Parent = WandA 
Mesh.Scale = Vector3.new(0.1, 1.2, 0.1) 
Weld = Instance.new("Weld") 
Weld.Parent = WandA 
Weld.Part0 = Limbs[PreferredHand] 
Weld.Part1 = WandA 
if (PreferredHand == 1) then 
Weld.C0 = CFrame.new(0, -1.2, -0.9) * CFrame.fromEulerAnglesXYZ(math.pi/4, 0, 0) 
else 
Weld.C0 = CFrame.new(0, -1.2, -0.9) * CFrame.fromEulerAnglesXYZ(math.pi + (math.pi/4), 0, 0) 
end 
end 




end 



function GrabFunction(Part) 
Grabbed = Part.Parent 
PlatformStand = Part.Parent.Humanoid.PlatformStand 
Part.Parent.Humanoid.PlatformStand = true 
Part.Parent.Torso.DraggingV1 = true 
Val = math.pi/2 
if (PreferredHand == 2) then 
Val = -math.pi/2 
end 
Part.Parent.Torso.CFrame = Limbs[PreferredHand].CFrame * CFrame.new(0, -1.4, 0) * CFrame.fromEulerAnglesXYZ(math.pi/2, math.pi, -math.pi/2) 
while true do 
if (Hold == false) then 
break 
end 
if (Part.Parent.Parent == nil) then 
break 
end 
if (Part.Parent:findFirstChild("Torso") == nil) then 
break 
end 
if (Part.Parent:findFirstChild("Humanoid") == nil) then 
break 
end 
if (Part.Parent.Humanoid.Health < 0.001) then 
break 
end 
Part.Parent.Humanoid.PlatformStand = true 
Part.Parent.Torso.CFrame = Limbs[PreferredHand].CFrame * CFrame.new(0, -1.4, 0) * CFrame.fromEulerAnglesXYZ(math.pi/2, math.pi, math.pi/2) 
wait(0.0) 
end 
if (Part.Parent:findFirstChild("Humanoid") ~= nil) then 
Part.Parent.Humanoid.PlatformStand = PlatformStand 
end 
if (Part.Parent:findFirstChild("Torso") ~= nil) then 
Part.Parent.Torso.DraggingV1 = false 
end 
Debounce = false 
Grabbed = nil 
end 

function Grab(Hit) 
if (Grabbed == nil) then 
if (Hit ~= nil) then 
if (Hit.Parent ~= nil) then 
if (Hit.Parent:findFirstChild("Humanoid") ~= nil) then 
if (Hit.Parent.Humanoid.Health > 0) then 
if (Hit.Parent:findFirstChild("Torso") ~= nil) then 
GrabFunction(Hit) 
end 
end 
end 
end 
end 
end 
end 
function Del(Object) 
for I = 1, 10 do 
wait(0.001) 
Object.Mesh.Scale = Vector3.new(Object.Mesh.Scale.x - 0.1, Object.Mesh.Scale.y - 0.1, Object.Mesh.Scale.z - 0.1) 
end 
Object:remove() 
end 


---------------------------------------------------------------------------------------------------------------------------------------------Click 
function Click(mouse) 
Hold = true 
if (Tool == 1) then 
DisableLimb(PreferredHand) 
Val = -math.pi/2 
if (PreferredHand == 2) then 
Val = math.pi/2 
end 
while true do 
if (Hold == false) then 
break 
end 
Place0 = Person.Character.Torso.CFrame 
Place0 = Place0 + ((Place0 * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)).lookVector * 0.5) + (Place0 * CFrame.fromEulerAnglesXYZ(0, Val, 0)).lookVector 
Place1 = Place0 + ((Place0.p - mouse.Hit.p).unit * - 2) 
Place2 = CFrame.new((Place0.p + Place1.p)/2, Place0.p) * CFrame.fromEulerAnglesXYZ(-(math.pi/2), Val, 0) 
HitPos = Person.Character.Torso.Position 
CJ = CFrame.new(HitPos) 
C0 = Person.Character.Torso.CFrame:inverse() *CJ 
C1 = Place2:inverse() * CJ 
NewJoints[PreferredHand].C0 = C0 
NewJoints[PreferredHand].C1 = C1 
wait(0.0) 
end 
EnableLimb(PreferredHand) 
end 


if (Tool == 3) then 
B = Instance.new("BillboardGui") 
B.Parent = Person.PlayerGui 
B.Name = "Indicator" 
B.Adornee = nil 
B.Size = UDim2.new(0, 1, 0, 1) 
T = Instance.new("ImageLabel") 
T.Image = "http://www.roblox.com/asset/?id=24838770" 
T.BackgroundTransparency = 1 
T.Parent = B 
T.Size = UDim2.new(0, 200, 0, 200) 
T.Position = UDim2.new(0, -100, 0 , -100) 
DisableLimb(PreferredHand) 
Val = -math.pi/2 
if (PreferredHand == 2) then 
Val = math.pi/2 
end 
while true do 
if (Hold == false) then 
break 
end 
if (mouse.Target == nil) then 
B.Adornee = nil 
else 
if (mouse.Target.Parent == nil) then 
B.Adornee = nil 
else 
if (mouse.Target.Parent:findFirstChild("Humanoid") == nil) then 
B.Adornee = nil 
else 
if (mouse.Target.Parent:findFirstChild("Torso") == nil) then 
B.Adornee = nil 
else 
if (mouse.Target.Parent.Humanoid.Health < 0.01) then 
B.Adornee = nil 
elseif (mouse.Target.Parent.Humanoid.Health > 0) then 
if (mouse.Target.Parent.Torso ~= B.Adornee) then 
B.Adornee = mouse.Target.Parent.Torso 
end 
end 
end 
end 
end 
end 
Point = mouse.Hit 
if (B.Adornee ~= nil) then 
Point = B.Adornee.CFrame 
end 

Place0 = Person.Character.Torso.CFrame 
Place0 = Place0 + ((Place0 * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)).lookVector * 0.5) + (Place0 * CFrame.fromEulerAnglesXYZ(0, Val, 0)).lookVector 
Place1 = Place0 + ((Place0.p - Point.p).unit * - 2) 
Place2 = CFrame.new((Place0.p + Place1.p)/2, Place0.p) * CFrame.fromEulerAnglesXYZ(-math.pi/2, math.pi, 0) 
HitPos = Person.Character.Torso.Position 
CJ = CFrame.new(HitPos) 
C0 = Person.Character.Torso.CFrame:inverse() *CJ 
C1 = Place2:inverse() * CJ 
NewJoints[PreferredHand].C0 = C0 
NewJoints[PreferredHand].C1 = C1 
wait(0.0) 
end 
B:remove() 
EnableLimb(PreferredHand) 
end 



end 

function Release(mouse) 
Hold = false 
end 
---------------------------------------------------------------------------------------------------------------------------------------------Key 
function PressKey(key, mouse) 
if (Tool == 1) then 
if (key == "g") then 
if (Hold == true) then 
if (BladeOut == false) then 
if (Debounce == false) then 
Debounce = true 
Connection = Limbs[PreferredHand].Touched:connect(Grab) 
for I = 1, 3000 do 
if (Hold == false) then 
break 
end 
if (BladeOut == true) then 
break 
end 
wait(0.001) 
end 
if (Grabbed == nil) then 
Debounce = false 
end 
Connection:disconnect() 
end 
end 
end 
end 
if (key == "f") then 
if (Hold == true) then 
if (BladeOut == true) then 
if (Debounce == false) then 
Debounce = true 
Person.Character.Suit.Blade.Blade.BladeA.ArmWeld:remove() 
Person.Character.Suit.Blade.Blade.BladeA.CanCollide = true 
BV = Instance.new("BodyVelocity") 
BV.Parent = Person.Character.Suit.Blade.Blade.BladeA 
BV.maxForce = Vector3.new(1e+010, 1e+010, 1e+010) 
BV.velocity = Person.Character.Suit.Blade.Blade.BladeA.CFrame.lookVector * 60 
BG = Instance.new("BodyGyro") 
BG.Parent = Person.Character.Suit.Blade.Blade.BladeA 
BG.maxTorque = Vector3.new(4e+030, 4e+030, 4e+030) 
BG.cframe = Person.Character.Suit.Blade.Blade.BladeA.CFrame 
coroutine.resume(coroutine.create(TimeDelete), Person.Character.Suit.Blade.Blade, 8) 
Person.Character.Suit.Blade.Blade.Parent = game.Workspace 
wait(3) 
Mod = Instance.new("Model") 
Mod.Parent = Blade 
Mod.Name = "Blade" 
BladeA = Instance.new("Part") 
BladeA.Parent = Mod 
BladeA.Name = "BladeA" 
BladeA.CanCollide = false 
BladeA.Transparency = 1 
BladeA.TopSurface = 0 
BladeA.BottomSurface = 0 
BladeA.formFactor = "Symmetric" 
BladeA.Size = Vector3.new(3.0, 3.0, 3.0) 
BladeA:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = BladeA 
Weld.Name = "ArmWeld" 
Weld.Part0 = Limbs[PreferredHand] 
Weld.Part1 = BladeA 
if (PreferredHand == 1) then 
Weld.C0 = CFrame.new(0.55, -1.4, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
else 
Weld.C0 = CFrame.new(-0.55, -1.4, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
end 
BladeB = Instance.new("Part") 
BladeB.Parent = Mod 
BladeB.Name = "BladeB" 
BladeB.CanCollide = false 
BladeB.Reflectance = 0.1 
BladeB.BrickColor = BrickColor.new("Really black") 
BladeB.TopSurface = 0 
BladeB.BottomSurface = 0 
BladeB.formFactor = "Symmetric" 
BladeB.Size = Vector3.new(3.0, 3.0, 3.0) 
MeshB = Instance.new("SpecialMesh") 
MeshB.Parent = BladeB 
MeshB.MeshType = "Wedge" 
MeshB.Scale = Vector3.new(0.05, 1, 0.1) 
BladeB:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = BladeB 
Weld.Part0 = BladeA 
Weld.Part1 = BladeB 
Weld.C0 = CFrame.new(0, -0.05, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
BladeC = Instance.new("Part") 
BladeC.Parent = Mod 
BladeC.Name = "BladeC" 
BladeC.CanCollide = false 
BladeC.Reflectance = 0.1 
BladeC.BrickColor = BrickColor.new("White") 
BladeC.TopSurface = 0 
BladeC.BottomSurface = 0 
BladeC.formFactor = "Symmetric" 
BladeC.Size = Vector3.new(3.0, 3.0, 3.0) 
MeshC = Instance.new("SpecialMesh") 
MeshC.Parent = BladeC 
MeshC.MeshType = "Wedge" 
MeshC.Scale = Vector3.new(0.05, 1, 0.1) 
BladeC:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = BladeC 
Weld.Part0 = BladeA 
Weld.Part1 = BladeC 
Weld.C0 = CFrame.new(0, 0.05, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, math.pi, 0) 
BladeA.Touched:connect(function(Hit) Touch(Hit, BladeA) end) 
Num = 1 
for I = 1, 5 do 
if (PreferredHand == 1) then 
BladeA.ArmWeld.C0 = CFrame.new(0.55, -Num, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
else 
BladeA.ArmWeld.C0 = CFrame.new(-0.55, -Num, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
end 
Num = Num + 0.1 
wait(0.01) 
end 
Debounce = false 
end 
end 
end 
end 
if (key == "r") then 
if (Debounce == false) then 
if (BladeOut == false) then 
BladeOut = true 
Mod = Instance.new("Model") 
Mod.Parent = Blade 
Mod.Name = "Blade" 
BladeA = Instance.new("Part") 
BladeA.Parent = Mod 
BladeA.Name = "BladeA" 
BladeA.CanCollide = false 
BladeA.Transparency = 1 
BladeA.TopSurface = 0 
BladeA.BottomSurface = 0 
BladeA.formFactor = "Symmetric" 
BladeA.Size = Vector3.new(1, 1, 1) 
BladeA:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = BladeA 
Weld.Name = "ArmWeld" 
Weld.Part0 = Limbs[PreferredHand] 
Weld.Part1 = BladeA 
if (PreferredHand == 1) then 
Weld.C0 = CFrame.new(0.55, -1.4, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
else 
Weld.C0 = CFrame.new(-0.55, -1.4, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
end 
BladeB = Instance.new("Part") 
BladeB.Parent = Mod 
BladeB.Name = "BladeB" 
BladeB.CanCollide = false 
BladeB.Reflectance = 0.1 
BladeB.BrickColor = BrickColor.new("Medium stone grey") 
BladeB.TopSurface = 0 
BladeB.BottomSurface = 0 
BladeB.formFactor = "Symmetric" 
BladeB.Size = Vector3.new(1, 1, 1) 
MeshB = Instance.new("SpecialMesh") 
MeshB.Parent = BladeB 
MeshB.MeshType = "Wedge" 
MeshB.Scale = Vector3.new(0.05, 1, 0.1) 
BladeB:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = BladeB 
Weld.Part0 = BladeA 
Weld.Part1 = BladeB 
Weld.C0 = CFrame.new(0, -0.05, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
BladeC = Instance.new("Part") 
BladeC.Parent = Mod 
BladeC.Name = "BladeC" 
BladeC.CanCollide = false 
BladeC.Reflectance = 0.1 
BladeC.BrickColor = BrickColor.new("Medium stone grey") 
BladeC.TopSurface = 0 
BladeC.BottomSurface = 0 
BladeC.formFactor = "Symmetric" 
BladeC.Size = Vector3.new(1, 1, 1) 
MeshC = Instance.new("SpecialMesh") 
MeshC.Parent = BladeC 
MeshC.MeshType = "Wedge" 
MeshC.Scale = Vector3.new(0.05, 1, 0.1) 
BladeC:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = BladeC 
Weld.Part0 = BladeA 
Weld.Part1 = BladeC 
Weld.C0 = CFrame.new(0, 0.05, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, math.pi, 0) 
BladeA.Touched:connect(function(Hit) Touch(Hit, BladeA) end) 
Num = 1 
for I = 1, 5 do 
if (PreferredHand == 1) then 
BladeA.ArmWeld.C0 = CFrame.new(0.55, -Num, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
else 
BladeA.ArmWeld.C0 = CFrame.new(-0.55, -Num, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
end 
Num = Num + 0.1 
wait(0.01) 
end 
else 
BladeOut = false 

if (Person.Character.Suit.Blade:findFirstChild("Blade") ~= nil) then 
if (Person.Character.Suit.Blade.Blade:findFirstChild("BladeA") ~= nil) then 
Num = 1.4 
for I = 1, 5 do 
if (PreferredHand == 1) then 
Person.Character.Suit.Blade.Blade.BladeA.ArmWeld.C0 = CFrame.new(0.55, -Num, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
else 
Person.Character.Suit.Blade.Blade.BladeA.ArmWeld.C0 = CFrame.new(-0.55, -Num, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
end 
Num = Num - 0.1 
wait(0.01) 
end 
end 
Person.Character.Suit.Blade.Blade:remove() 
end 


end 
end 
end 
end 
if (Tool == 3) then 
if (key == "f") then 
if (Debounce == false) then 
if (Hold == true) then 
if (Person.PlayerGui:findFirstChild("Indicator") ~= nil) then 
if (Person.PlayerGui.Indicator.Adornee ~= nil) then 
Player = Person.PlayerGui.Indicator.Adornee.Parent 
if (Mode == 1) then 
Orb = Instance.new("Part") 
Orb.Parent = Person.Character 
Orb.Name = "Orb" 
Orb.CanCollide = false 
Orb.BrickColor = BrickColor.new("Black") 
Orb.Transparency = 0.5 
Orb.TopSurface = 0 
Orb.BottomSurface = 0 
Orb.formFactor = "Symmetric" 
Orb.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("SpecialMesh") 
Mesh.Parent = Orb 
Mesh.MeshType = "Sphere" 
Mesh.Scale = Vector3.new(1, 1, 1) 
Orb:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Orb 
Weld.Part0 = Person.Character.Wand 
Weld.Part1 = Orb 
Weld.C0 = CFrame.new(0, -0.6, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Player:BreakJoints() 
Del(Orb) 
end 
if (Mode == 2) then 
if (game.Players:GetPlayerFromCharacter(Player) ~= nil) then 
Orb = Instance.new("Part") 
Orb.Parent = Person.Character 
Orb.Name = "Orb" 
Orb.CanCollide = false 
Orb.BrickColor = BrickColor.new("Bright violet") 
Orb.Transparency = 0.5 
Orb.TopSurface = 0 
Orb.BottomSurface = 0 
Orb.formFactor = "Symmetric" 
Orb.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("SpecialMesh") 
Mesh.Parent = Orb 
Mesh.MeshType = "Sphere" 
Mesh.Scale = Vector3.new(1, 1, 1) 
Orb:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Orb 
Weld.Part0 = Person.Character.Wand 
Weld.Part1 = Orb 
Weld.C0 = CFrame.new(0, -0.6, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
game.Players:GetPlayerFromCharacter(Player):remove() 
Del(Orb) 
end 
end 
if (Mode == 3) then 
Orb = Instance.new("Part") 
Orb.Parent = Person.Character 
Orb.Name = "Orb" 
Orb.CanCollide = false 
Orb.BrickColor = BrickColor.new("Teal") 
Orb.Transparency = 0.5 
Orb.TopSurface = 0 
Orb.BottomSurface = 0 
Orb.formFactor = "Symmetric" 
Orb.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("SpecialMesh") 
Mesh.Parent = Orb 
Mesh.MeshType = "Sphere" 
Mesh.Scale = Vector3.new(1, 1, 1) 
Orb:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Orb 
Weld.Part0 = Person.Character.Wand 
Weld.Part1 = Orb 
Weld.C0 = CFrame.new(0, 0.6, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Player.Humanoid.PlatformStand = not Player.Humanoid.PlatformStand 
Del(Orb) 
end 


else 

end 
if (Mode == 4) then 
Orb = Instance.new("Part") 
Orb.Parent = Person.Character 
Orb.Name = "Orb" 
Orb.CanCollide = false 
Orb.BrickColor = BrickColor.new("Bright orange") 
Orb.Transparency = 0.5 
Orb.TopSurface = 0 
Orb.BottomSurface = 0 
Orb.formFactor = "Symmetric" 
Orb.Size = Vector3.new(-1, -1, -1) 
Mesh = Instance.new("SpecialMesh") 
Mesh.Parent = Orb 
Mesh.MeshType = "Sphere" 
Mesh.Scale = Vector3.new(1, 1, 1) 
Orb:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Orb 
Weld.Part0 = Person.Character.Wand 
Weld.Part1 = Orb 
Weld.C0 = CFrame.new(0, -0.6, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Ex = Instance.new("Explosion") 
Ex.Parent = game.Workspace 
Ex.BlastRadius = 5 
Ex.Position = mouse.Hit.p 
Ex.BlastPressure = 1000 
Del(Orb) 
end 

end 
end 
end 
end 

end 


if (key == "e") then 
Mode = Mode + 1 
Table = ModeList[Tool] 
if (Mode > #Table) then 
Mode = 1 
end 
Person.PlayerGui.MahGoey.Frame.Mode.Text = Table[Mode] 
end 
if (key == "q") then 
Mode = Mode - 1 
Table = ModeList[Tool] 
if (Mode < 1) then 
Mode = #Table 
end 
Person.PlayerGui.MahGoey.Frame.Mode.Text = Table[Mode] 
end 
if (key == "v") then 
if (Debounce == false) then 
Tool = Tool + 1 
if (Tool > #Tools) then 
Tool = 1 
end 
Person.PlayerGui.MahGoey.Frame.Tool.Text = Tools[Tool] 
Mode = 1 
Table = ModeList[Tool] 
Person.PlayerGui.MahGoey.Frame.Mode.Text = Table[Mode] 
ChangeWeapon(Tool, Tool - 1) 
end 
end 
if (key == "c") then 
if (Debounce == false) then 
Tool = Tool - 1 
if (Tool < 1) then 
Tool = #Tools 
end 
Person.PlayerGui.MahGoey.Frame.Tool.Text = Tools[Tool] 
Mode = 1 
Table = ModeList[Tool] 
Person.PlayerGui.MahGoey.Frame.Mode.Text = Table[Mode] 
ChangeWeapon(Tool, Tool + 1) 
end 
end 
if (key == "p") then 
Person.Character:BreakJoints() 
end 
if (key == "0") then 
Person.Character.Humanoid.WalkSpeed = 50 
end 
end 

function UpKey(key, mouse) 
if (key == "0") then 
Person.Character.Humanoid.WalkSpeed = 16 
end 
end 
---------------------------------------------------------------------------------------------------------------------------------------------Select 
function Select(mouse) 
mouse.Button1Down:connect(function() Click(mouse) end) 
mouse.Button1Up:connect(function() Release(mouse) end) 
mouse.KeyDown:connect(function(key) PressKey(key, mouse) end) 
mouse.KeyUp:connect(function(key) UpKey(key, mouse) end) 
end 

function Deselect(mouse) 
Hold = false 
end 

Bin.Selected:connect(Select) 
Bin.Deselected:connect(Deselect)
--lego
