local player = game.Players.LocalPlayer

local char = player.Character

player.Character.Humanoid.MaxHealth = math.huge

-- Body parts

local torso = char.Torso

-- Tool declarations

local mouseDown = false

local keysDown = {}

-- Earth bending declarations

local raisingEarth = false

local raisingTower = false

local wall = false

local groundAttack = false

local lastTower = nil

local disabled = {}

local frames = {}

local parts = {}

local Taunts = {"Banana!", ":L", ":C", "O.o", "V.V", ":3", ":)", ":o", ":("}

local raisechats = {"xD!", "XD", "C:", ">.>","I.I", ":D","D:",":P","(:"}

-- Main

function main(mouse)

 while true do wait(1/30)

 local look = CFrame.new(torso.Position, torso.Position + mouse.Hit.lookVector)

 -- Reset parts

 parts = {}

 -- Get parts

 for x = -20, 20, 10 do

 for y = -20, 20, 10 do

 for z = -30, -10, 10 do

 local pos = look * Vector3.new(x, y, z)

 getPartsInRegion3(

 Region3.new(

 pos + Vector3.new(1,1,1)*-9,

 pos + Vector3.new(1,1,1)* 9

 ),

 parts

 )

 end

 end

 end

 -- Mouse down

 if mouseDown then

 -- Create dif and bodies

 for _, part in pairs(parts) do

 if part.Name == "Earth" and not disabled[part] then

 if not frames[part] and part ~= lastTower then

 frames[part] = look:toObjectSpace(part.CFrame)

 part:ClearAllChildren()

 part.Anchored = false

 -- Create bodies

 createBody("Position", part)

 createBody("Gyro", part)

 end

 end

 end

 -- Move bodies

 for part in pairs(frames) do

 local bodyPos = part:FindFirstChild("BodyPosition")

 local bodyGyr = part:FindFirstChild("BodyGyro")

 -- Bodies exist

 if bodyPos and bodyGyr then

 local dif = look * frames[part]

 bodyPos.position = dif.p

 bodyGyr.cframe = dif

 else

 frames[part] = nil

 end

 end

 else

 for part in pairs(frames) do

 if part.Name == "Earth" then

 frames[part] = nil

 part:ClearAllChildren()

 end

 end

 end

 end

end

-- On key change

function onKeyChange(mouse, key, state)

 -- Raise earth

 if key == "e" and state and not raisingEarth then

 game:GetService("Chat"):Chat(char.Head, raisechats[math.random(1,#raisechats)], Enum.ChatColor.Red)

 raisingEarth = true

 while keysDown[key] do

 local torsoY = torso.Position.y + 3

 local pos = planeY(torso.Position, 0.4 - 4/2)

 local dir = planeY(mouse.Hit.lookVector).unit

 local frame = CFrame.new(pos, pos + dir) * CFrame.new(r(-10, 10), 0, r(-20, -5))

 -- Create earth part

 local part = createEarth(workspace)

 part.Anchored = true

 part.Size = Vector3.new(10,10,10)

 disabled[part] = true

 -- Raise earth

 for i = 1, 4 do i = i/4

 part.CFrame = frame * CFrame.new(0, (torsoY - frame.y)*i, 0)

 wait(1/10000000)

 if not part.Anchored then

 break

 end

 end

 disabled[part] = nil

 part.Anchored = false

 wait(1/100)

 end

 raisingEarth = false







elseif key == "c" and state and not raisingEarth then

 game:GetService("Chat"):Chat(char.Head, raisechats[math.random(1,#raisechats)], Enum.ChatColor.Red)

 raisingEarth = true

 while keysDown[key] do

 local torsoY = torso.Position.y + 3

 local pos = planeY(torso.Position, 0.4 - 4/2)

 local dir = planeY(mouse.Hit.lookVector).unit

 local frame = CFrame.new(pos, pos + dir) * CFrame.new(r(-10, 10), 0, r(-20, -5))

 -- Create earth part

 local part = createEarth(workspace)

 part.Anchored = true

 part.Size = Vector3.new(2, 2, 2)

 disabled[part] = true

 -- Raise earth

 for i = 1, 4 do i = i/4

 part.CFrame = frame * CFrame.new(0, (torsoY - frame.y)*i, 0)

 wait(1/10000000)

 if not part.Anchored then

 break

 end

 end

 disabled[part] = nil

 part.Anchored = false

 wait(1/100)

 end

 raisingEarth = false




 -- Push earth

 elseif key == "f" and state then

 game:GetService("Chat"):Chat(char.Head, Taunts[math.random(1,#Taunts)], Enum.ChatColor.Red)

 for _, part in pairs(parts) do

 if part.Name == "Earth" and part ~= lastTower then

 part:ClearAllChildren()

 part.Anchored = false

local xx = Instance.new("SpecialMesh",part)

xx.Scale = Vector3.new(50,50,50)

xx.MeshId = "http://www.roblox.com/asset/?id=105992239"

xx.TextureId = "http://www.roblox.com/asset/?id=2077791"

 part.Touched:connect(function(Hurt)

if Hurt.Parent:findFirstChild("Humanoid") and Hurt.Parent.Name~=owner then

for i,v in pairs(Hurt.Parent:GetChildren()) do

if v.ClassName=="Part" then

end

end

Hurt.Parent.Humanoid:TakeDamage(100000)

end

end) 

 -- Add force

 local bodyForce = createBody("Force", part)

 bodyForce.force = mouse.Hit.lookVector*1.9e4 * part:GetMass()

 game.Debris:AddItem(bodyForce, 1/30)

 -- Disable part

 disabled[part] = true

 delay(1, function()

 disabled[part] = nil

 end)

 end

 end

 -- Break earth

 elseif key == "b" and state then

game:GetService("Chat"):Chat(char.Head, "Fist Punch!", Enum.ChatColor.Red)

 for part in pairs(frames) do

 if part.Size == Vector3.new(4, 4, 4) then

 for x = -1, 2, 2 do

 for y = -1, 2, 2 do

 for z = -1, 1, 2 do

 local oPart = createEarth(workspace)

 oPart.Size = Vector3.new(2, 2, 2)

 oPart.CFrame = part.CFrame * CFrame.new(x*1.1, y*1.1, z*1.1)

 end

 end

 end

 part:Destroy()

 end

end

 for part in pairs(frames) do

 if part.Size == Vector3.new(25, 15, 25) then

 for x = -3, 2, 2 do

 for y = -3, 2, 2 do

 for z = -3, 1, 2 do

 local oPart = createEarth(workspace)

 oPart.Size = Vector3.new(2, 2, 2)

 oPart.CFrame = part.CFrame * CFrame.new(x*1.1, y*1.1, z*1.1)

 end

 end

 end

 part:Destroy()

 end

end

 for part in pairs(frames) do

 if part.Size == Vector3.new(2, 2, 2) then

 for x = -0.5, 2, 2 do

 for y = -0.5, 2, 2 do

 for z = -0.5, 1, 2 do

 local oPart = createEarth(workspace)

 oPart.Size = Vector3.new(1, 1, 1)

 oPart.CFrame = part.CFrame * CFrame.new(x*1.1, y*1.1, z*1.1)

 end

 end

 end

 part:Destroy()

 end

end







 -- Raise tower

 elseif key == "r" and state and not raisingTower then

 game:GetService("Chat"):Chat(char.Head, raisechats[math.random(1,#raisechats)], Enum.ChatColor.Red)

 raisingTower = true

 lastTower = nil

 if torso.Position.y - 5/2 < 20.4 then

 local part = createEarth(workspace)

 part.Anchored = true

 disabled[part] = true

 for i = 0, 20, 4 do

 part.Size = Vector3.new(50, 350, 50)

 part.CFrame = CFrame.new(torso.Position.x, 0.4 + part.Size.y/2, torso.Position.z)

 torso.CFrame = (torso.CFrame - torso.CFrame.p) + Vector3.new(torso.Position.x, part.Position.y + part.Size.y/2 + 5/2, torso.Position.z)

 wait(1/30)

 end

 lastTower = part

 disabled[part] = nil

 part.Anchored = false

 end

 raisingTower = false




-- Raise wall

 elseif key == "t" and state and not wall then

game:GetService("Chat"):Chat(char.Head, raisechats[math.random(1,#raisechats)], Enum.ChatColor.Red)

 wall = true

 lastWall = nil

 if torso.Position.y - 5/2 < 20.4 then

 local part = createEarth(workspace)

 part.Anchored = true

 disabled[part] = true

 for i = 0, 1, 20 do

 part.Size = Vector3.new(25, 1, 25)

 part.CFrame = CFrame.new(torso.Position.x, 0.4 + part.Size.y/2, torso.Position.z)

 torso.CFrame = (torso.CFrame - torso.CFrame.p) + Vector3.new(torso.Position.x, part.Position.y + part.Size.y/2 + 5/2, torso.Position.z)

 wait(1/30)

 end

 lastWall = part

 disabled[part] = nil

 part.Anchored = false

 end

 wall = false

 -- Ground attack

 elseif key == "g" and state and not groundAttack then

game:GetService("Chat"):Chat(char.Head, Taunts[math.random(1,#Taunts)], Enum.ChatColor.Red)

 groundAttack = true

 delay(1, function()

 groundAttack = false

 end)

 local dir = planeY(mouse.Hit.p - torso.Position).unit

 local pos = planeY(torso.Position, 0.4 + 1) + dir*5

 local ground = {}

 delay(5, function()

 for i = 1, 20 do

 for _, part in pairs(ground) do

 if part.Anchored then

 part.CFrame = part.CFrame + Vector3.new(20,20,20)

 end

 end

 wait(1/30)

 end

 for _, part in pairs(ground) do

 if part.Anchored then

 part:Destroy()

 end

 end

 end)

 for i = 1, 10 do

 local hit, pos2 = rayCast(pos, dir*5, {char})

 local part = createEarth(workspace)

 part.Anchored = true

 part.Size = Vector3.new(4, 4, 4)

 part.CFrame = CFrame.new(pos2, pos2 + dir) * CFrame.Angles(math.rad(-50), 0, 0) + Vector3.new(0, -0, 0)

 ground[#ground + 1] = part

 -- Add force

 if hit then

 local mass = hit:GetMass()

 -- Hit player

 for _, oPlayer in pairs(game.Players:GetPlayers()) do

 if oPlayer.Character and oPlayer.Character:FindFirstChild("Torso") and hit:IsDescendantOf(oPlayer.Character) then

 hit = oPlayer.Character.Torso

 mass = 20

 end

 end

 if hit.Name ~= "Torso" then

 hit:ClearAllChildren()

 end

 hit.Anchored = false

 -- Add force

 local bodyForce = createBody("Force", hit)

 bodyForce.force = (dir + Vector3.new(0, 0.2, 0)).unit*1e4 * mass

 game.Debris:AddItem(bodyForce, 1/30)

 break

 end

 pos = pos2

 wait(1/20)

 end

 end

end

--- CORE CODE BELOW --- CORE CODE BELOW --- CORE CODE BELOW ---

--- CORE CODE BELOW --- CORE CODE BELOW --- CORE CODE BELOW ---

--- CORE CODE BELOW --- CORE CODE BELOW --- CORE CODE BELOW ---

-- Clear old tool

player.Backpack:ClearAllChildren()

-- Create tool

local tool = Instance.new("HopperBin")

tool.Parent = player.Backpack

tool.Name = "Queen of Hearts"

-- Tool selected

tool.Selected:connect(function(mouse)

 mouse.Icon = "rbxasset://textures\\GunCursor.png"

 -- Mouse events

 mouse.Button1Down:connect(function()

 mouseDown = true

 end)

 mouse.Button1Up:connect(function()

 mouseDown = false

 end)

 mouse.KeyDown:connect(function(key)

 keysDown[key:lower()] = true

 onKeyChange(mouse, key:lower(), true)

 end)

 mouse.KeyUp:connect(function(key)

 keysDown[key:lower()] = false

 onKeyChange(mouse, key:lower(), false)

 end)

 -- Call main

 main(mouse)

end)

--- LIBRARY BELOW --- LIBRARY BELOW --- LIBRARY BELOW ---

--- LIBRARY BELOW --- LIBRARY BELOW --- LIBRARY BELOW ---

--- LIBRARY BELOW --- LIBRARY BELOW --- LIBRARY BELOW ---

-- Ray cast

function rayCast(pos, dir, ignore)

 return workspace:FindPartOnRayWithIgnoreList(Ray.new(pos, dir), ignore)

end

-- Create body

function createBody(type, path)

 local body = Instance.new("Body" .. type)

 if type == "Gyro" then

 body.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

 elseif type ~= "Force" then

 body.maxForce = Vector3.new(math.huge, math.huge, math.huge)

 end

 body.Parent = path

 return body

end

-- Get parts in region 3

function getPartsInRegion3(region, parts)

 repeat

 local regParts = workspace:FindPartsInRegion3WithIgnoreList(region, parts, 100)

 for i, part in pairs(regParts) do

 parts[#parts + 1] = part

 end

 until #regParts < 100

end

-- Random

function r(min, max)

 return math.random()*(max - min) + min

end

-- Plane y

function planeY(v, y)

 return Vector3.new(v.x, y or 0, v.z)

end

-- Create earth

function createEarth(path)

 local part = createPart("Earth", path)

 part.BrickColor = BrickColor.new("Bright red")

 part.Material = "Slate"

 m = Instance.new("Fire",part)

 m.Heat = 10

 part.Parent = path

 return part

end

-- Create part

function createPart(name, path)

 local part = Instance.new("Part")

 part.FormFactor = "Symmetric"

 part.BottomSurface = "Smooth"

 part.TopSurface = "Smooth"

 part.Size = Vector3.new(1, 1, 1)

 part.Name = name

 part.Parent = path

 return part

end

-----Added skillz

Mouse = player:GetMouse()

function onKeyDown(key)

 key = key:lower()

 if key == "n" then

  game:service'Chat':Chat(player.Character.Head, "Time to play...my way...of russian roulette...", Enum.ChatColor.Red)

local Power = Instance.new("Part",player.Character)

local Power2 = Instance.new("SpecialMesh",Power)

local Power3 = Instance.new("Fire",Power) 

Power2.MeshId = "http://www.roblox.com/asset/?id=233695270"

Power2.TextureId = "http://www.roblox.com/asset/?id=2077791"

Power2.Scale = Vector3.new(1,1,1)

Power.Position = player.Character["Right Leg"].Position + Vector3.new(0,0,0)

Power.FormFactor = "Custom"

Power.Size = Vector3.new(.5,.5,.5)

Power.Transparency = 31

Power.BottomSurface = "Smooth"

Power.TopSurface = "Smooth"

Power.Name = "WeldedPart"

Power3.Size = 3

Power3.Color = Color3.new(255,0,0)

Power3.SecondaryColor = Color3.new(255,0,0)

local wld = Instance.new("Weld",Power)

wld.Part0 = player.Character["Right Arm"]

wld.Part1 = Power

wld.C0 = CFrame.new(0,-0.61,0,1,0,0,0,1,0,0,0,1)

Power.Touched:connect(function(Healing)

if Healing.Parent:findFirstChild("Humanoid") and Healing.Parent.Name~=owner then

game:service'Chat':Chat(Healing.Parent.Head, "D-d-don't...kill me!", Enum.ChatColor.Red)

local p = Instance.new("Part",Healing.Parent)

local m = Instance.new("SpecialMesh",p) 

m.MeshType = "Brick"

m.Scale = Vector3.new(9,25,9) -------Copy the 3 value box to here

p.Position = Healing.Parent.Torso.Position + Vector3.new(0,1.5,0)

p.FormFactor = "Custom"

p.Transparency = 1

p.BrickColor = BrickColor.new("Hot pink")

p.Size = Vector3.new(.5,.5,.5)

p.BottomSurface = "Smooth"

p.TopSurface = "Smooth"

p.Name = "WeldedPart"

local wld = Instance.new("Weld",p)

wld.Part0 = Healing.Parent.Torso -- can be andthing like arms or legs. Just put Player.Character["Right Arm"] for arms and stuff

wld.Part1 = p

wld.C0 = CFrame.new(-0.01,0.09,0,1,0,0,0,1,0,0,0,1)--i know it

for i,v in pairs(Healing.Parent:GetChildren()) do

if v.ClassName=="Part" then

end

end

Power:remove()

Healing.Parent.Torso.Anchored = true

wait(20)

p:remove()

Healing.Parent.Torso.Anchored = false

end

end)

end

 end

Mouse.KeyDown:connect(onKeyDown)


-----Flying

    local player = game.Players.LocalPlayer
    local pchar = player.Character
    local mouse = player:GetMouse()
    local cam = workspace.CurrentCamera
     
    local rad = math.rad
     
    local keysDown = {}
    local flySpeed = 0
    local MAX_FLY_SPEED = 500
     
    local canFly = false
    local flyToggled = false
     
    local forward, side = 0, 0
    local lastForward, lastSide = 0, 0
     
    local floatBP = Instance.new("BodyPosition")
    floatBP.maxForce = Vector3.new(0, math.huge, 0)
    local flyBV = Instance.new("BodyVelocity")
    flyBV.maxForce = Vector3.new(9e9, 9e9, 9e9)
    local turnBG = Instance.new("BodyGyro")
    turnBG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
     
    mouse.KeyDown:connect(function(key)
            keysDown[key] = true
           
            if key == "q" then
                    flyToggled = not flyToggled
                   
                    if not flyToggled then
                            floatBP.Parent = nil
                            flyBV.Parent = nil
                            turnBG.Parent = nil
                            pchar.Torso.Velocity = Vector3.new()
                            pchar.Humanoid.PlatformStand = false
                    end
            end
           
    end)
    mouse.KeyUp:connect(function(key)
            keysDown[key] = nil
    end)
     
    local function updateFly()
     
            if not flyToggled then return end
           
            lastForward = forward
            lastSide = side
           
            forward = 0
            side = 0
           
            if keysDown.w then
                    forward = forward + 1
            end
            if keysDown.s then
                    forward = forward - 1
            end
            if keysDown.a then
                    side = side - 1
            end
            if keysDown.d then
                    side = side + 1
            end
           
            canFly = (forward ~= 0 or side ~= 0)
           
            if canFly then
                    turnBG.Parent = pchar.Torso
                    floatBP.Parent = nil
                    flyBV.Parent = pchar.Torso
                   
                    flySpeed = flySpeed + 1 + (flySpeed / MAX_FLY_SPEED)
                    if flySpeed > MAX_FLY_SPEED then flySpeed = MAX_FLY_SPEED end
            else
                    floatBP.position = pchar.Torso.Position
                    floatBP.Parent = pchar.Torso
                   
                    flySpeed = flySpeed - 1
                    if flySpeed < 0 then flySpeed = 0 end
            end
           
            local camCF = cam.CoordinateFrame
            local in_forward = canFly and forward or lastForward
            local in_side = canFly and side or lastSide
           
            flyBV.velocity = ((camCF.lookVector * in_forward) + (camCF * CFrame.new(in_side,
    in_forward * 0.2, 0).p) - camCF.p) * flySpeed
           
            turnBG.cframe = camCF * CFrame.Angles(-rad(forward * (flySpeed / MAX_FLY_SPEED)), 0,
    0)
    end
     
    game:service'RunService'.RenderStepped:connect(function()
            if flyToggled then
                    pchar.Humanoid.PlatformStand = true
            end
            updateFly()
    end)