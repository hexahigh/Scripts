Ply = game.Players.LocalPlayer
--FIXED WITH TRIGECTORY's CheatSheet--
cheatsheetplr = game.Players.LocalPlayer
i = Instance.new("NumberValue", cheatsheetplr )
i.Name = "FPSCH"
Bin = Instance.new("HopperBin", cheatsheetplr .Backpack)
script.Parent = Bin
local cf = CFrame.new
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
RW = Create("Weld")({Name = "Right Shoulder", Part0 = Tor, C0 = CFrame.new(1.5, 0.5, 0), C1 = CFrame.new(0, 0.5, 

0), Part1 = RA, Parent = Tor})
LW = Create("Weld")({Name = "Left Shoulder", Part0 = Tor, C0 = CFrame.new(-1.5, 0.5, 0), C1 = CFrame.new(0, 0.5, 

0), Part1 = LA, Parent = Tor})
Char = Ply.Character
Character = Char
Tor = Char.Torso
He = Char.Head
Ne = Tor.Neck
Hu = Char.Humanoid
LA = Char["Left Arm"]
LL = Char["Left Leg"]
RA = Char["Right Arm"]
RL = Char["Right Leg"]
LS = Tor["Left Shoulder"]
RS = Tor["Right Shoulder"]
mana = 100
LH = Tor["Left Hip"]
RH = Tor["Right Hip"]
it = Instance.new
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
Combo = 1
Mouse = Ply:GetMouse()
NeckCF = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
RP = Char.HumanoidRootPart
RJ = RP.RootJoint
RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
LHCF = CFrame.Angles(0, math.rad(-90), 0)
RHCF = CFrame.Angles(0, math.rad(90), 0)
attack = false
equipped = false
local Anim = "Idle"
cam = workspace.CurrentCamera
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
local m = Create("Model")({Parent = Char, Name = "WeaponModel"})
local Effects = {}
RS.Parent = nil
LS.Parent = nil
RW = Create("Weld")({Name = "Right Shoulder", Part0 = Tor, C0 = CFrame.new(1.5, 0.5, 0), C1 = CFrame.new(0, 0.5, 0), Part1 = RA, Parent = Tor})
LW = Create("Weld")({Name = "Left Shoulder", Part0 = Tor, C0 = CFrame.new(-1.5, 0.5, 0), C1 = CFrame.new(0, 0.5, 0), Part1 = LA, Parent = Tor})
mouse = Ply:GetMouse()
RemoveOutlines = function(part)
  part.TopSurface = 10
end

CreatePart = function(FF, Par, Mat, Ref, Tra, BC, Nam, Siz)
  local Part = Create("Part")({formFactor = FF, Parent = Par, Reflectance = Ref, Transparency = Tra, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BC)), Name = Nam, Size = Siz, Position = Tor.Position, Material = Mat})
  RemoveOutlines(Part)
  return Part
end

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.033333333333333
if Ply.FPSCH.Value == true then
  frame = 0.016666666666667
else
  frame = 0.033333333333333
end
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
  tf = tf + s
  if frame <= tf then
    if allowframeloss then
      script.Heartbeat:Fire()
      lastframe = tick()
    else
      for i = 1, math.floor(tf / frame) do
        script.Heartbeat:Fire()
      end
      lastframe = tick()
    end
    if tossremainder then
      tf = 0
    else
      tf = tf - frame * math.floor(tf / frame)
    end
  end
end
)
swait = function(num)
  if num == 0 or num == nil then
    ArtificialHB.Event:wait()
  else
    for i = 0, num do
      ArtificialHB.Event:wait()
    end
  end
end

pwait = function(num)
  if num == 0 or num == nil then
    game:service("RunService").Heartbeat:wait(0)
  else
    for i = 0, num do
      game:service("RunService").Heartbeat:wait(0)
    end
  end
end

CreateMesh = function(Ms, Par, MType, MId, OS, Sca)
  local Msh = Create(Ms)({Parent = Par, Offset = OS, Scale = Sca})
  if Ms == "SpecialMesh" then
    Msh.MeshType = MType
    Msh.MeshId = MId
  end
end

CreateWeld = function(Par, PartA, PartB, CA, CB)
  local Weld = Create("Weld")({Parent = Par, Part0 = PartA, Part1 = PartB, C0 = CA, C1 = CB})
  return Weld
end

CreateSound = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Create("Sound")({Parent = par or workspace, Volume = vol, Pitch = pit or 1, SoundId = id})
    swait()
    sou:play()
  end
))
end

NoOutline = function(Part)
  Part.TopSurface = 10
end

function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a

[4]*startInterp + b[4]*finishInterp 
end

rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end

Damage = function(hit, damage, cooldown, Color1, Color2, HSound, HPitch)
  for i,v in pairs(hit:GetChildren()) do
    if v:IsA("Humanoid") and hit.Name ~= Char.Name then
      local find = v:FindFirstChild("Hitz")
      if not find then
        if v.Parent:findFirstChild("Head") then
          local BillG = Create("BillboardGui")({Parent = v.Parent.Head, Size = UDim2.new(1, 0, 1, 0), Adornee = v.Parent.Head, StudsOffset = Vector3.new(math.random(-3, 3), math.random(3, 5), math.random(-3, 3))})
          do
            local TL = Create("TextLabel")({Parent = BillG, Size = UDim2.new(3, 3, 3, 3), BackgroundTransparency = 1, Text = tostring(damage) .. "-", TextColor3 = Color1.Color, TextStrokeColor3 = Color2.Color, TextStrokeTransparency = 0, TextXAlignment = Enum.TextXAlignment.Center, TextYAlignment = Enum.TextYAlignment.Center, FontSize = Enum.FontSize.Size18, Font = "ArialBold"})
            coroutine.resume(coroutine.create(function()
    wait(1)
    for i = 0, 1, 0.1 do
      wait(0.1)
      BillG.StudsOffset = BillG.StudsOffset + Vector3.new(0, 0.1, 0)
    end
    BillG:Destroy()
  end
))
          end
        end
        do
          HitHealth = v.Health
          v.Health = v.Health - damage
          if HitHealth ~= v.Health and HitHealth ~= 0 and v.Health <= 0 and v.Parent.Name ~= "Lost Soul" then
            print("gained spree")
          end
          do
            local bool = Create("BoolValue")({Parent = v, Name = "Hitz"})
            if HSound ~= nil and HPitch ~= nil then
              CreateSound(HSound, hit, 1, HPitch)
            end
            game:GetService("Debris"):AddItem(bool, cooldown)
            -- DECOMPILER ERROR at PC174: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC174: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC174: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC174: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC174: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
end

MagniDamage = function(Hit, Part, magni, mindam, maxdam, knock, Type)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          Damage(Hit, head, mindam, maxdam, knock, Type, RP, 0.2, 1, 3)
        end
      end
    end
  end
end

Handle = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Fossil", "Handle", Vector3.new(0.200000003, 1.5999999, 0.400000006))
Handleweld = CreateWeld(m, RA, Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000144958496, -0.000473022461, -0.902323723, -0.99999088, -7.06478168e-005, 1.32429577e-007, -1.32337391e-007, -1.23539292e-006, -0.999991298, 7.11832181e-005, -0.999998987, 1.19070683e-006))
FakeHandle = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Fossil", "FakeHandle", Vector3.new(0.200000003, 0.399999976, 0.400000006))
FakeHandleweld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.62939453e-006, 0, -4.76837158e-007, 0.999981761, -1.49498192e-011, -1.60442858e-006, 4.88853402e-012, 0.999982595, 1.34059405e-007, 5.34804883e-007, -4.46862032e-008, 0.999998212))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727e-005, -1.29968262, -0.0999927521, 0.999981761, -4.21102413e-006, -0.000178337199, 4.21249342e-006, 0.999982595, 8.45484647e-006, 0.000177264592, -8.3660907e-006, 0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.57763672e-005, -1.20024109, 0.0999908447, 0.999981761, -3.9908814e-006, -0.00018298396, -3.993885e-006, -0.999982595, -1.6677257e-005, -0.000181911251, 1.65883521e-005, -0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.81469727e-005, -1.29968262, -0.100018501, -0.999981761, 4.32283468e-006, 0.00017718962, 4.32428533e-006, 0.999982595, 8.40528628e-006, -0.000176117028, 8.3165487e-006, -0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.19999998807907, "Toothpaste", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.28881836e-005, 0.100128174, -3.0040741e-005, -0.999981761, -3.06569291e-006, 0.000182044634, -3.06690617e-006, 0.999982595, -6.56936527e-006, -0.000180971983, -6.65919424e-006, -0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.52587891e-005, -0.100143433, -2.28881836e-005, -0.999981761, 8.39634822e-007, 0.000183251264, -8.39851964e-007, -0.999982595, -1.34311608e-006, 0.000182178643, -1.2538751e-006, 0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.19999998807907, "Toothpaste", "Part", Vector3.new(0.200000003, 0.400000036, 0.400000006))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.34057617e-005, -0.39994812, -0.000118732452, 0.999981761, 3.41485384e-006, -2.31657104e-005, 3.41463692e-006, -0.999982595, -1.02540453e-005, -2.20957536e-005, 1.01644318e-005, -0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.400000036, 0.400000006))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.81469727e-005, 0.399993896, -6.67572021e-006, 0.999981761, -1.19159111e-007, -1.12509952e-005, 1.19157249e-007, 0.999982595, 9.39085567e-007, 1.01812002e-005, -8.49698608e-007, 0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.400000036, 0.400000006))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.86645508e-005, 0.799972534, 4.76837158e-006, 0.999981761, -1.78735206e-007, -1.23205427e-005, 1.78738247e-007, 0.999982595, 1.29673231e-006, 1.12507296e-005, -1.20734046e-006, 0.999998212))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.34057617e-005, -1.20025635, 0.10000658, -0.999981761, 3.90575906e-006, 0.000185596058, -3.90847254e-006, -0.999982595, -1.48671952e-005, 0.000184523349, -1.47783121e-005, 0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.19999998807907, "Toothpaste", "Part", Vector3.new(0.200000003, 0.600000024, 0.400000006))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.86645508e-005, -0.899749756, -1.00135803e-005, 0.999981761, -4.52529139e-006, -0.000163834338, 4.52641507e-006, 0.999982595, 7.07933259e-006, 0.000162761979, -6.99058864e-006, 0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.19999998807907, "Toothpaste", "Part", Vector3.new(0.200000003, 0.600000024, 0.400000006))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.10351563e-005, 0.29977417, -3.57627869e-005, -0.999981761, 4.56700582e-006, 2.76307201e-005, -4.56679709e-006, -0.999982595, 7.23480662e-006, 2.65607014e-005, 7.32394074e-006, 0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.600000024, 0.400000006))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.57763672e-005, -0.299850464, -1.8119812e-005, -0.999981761, 6.3186701e-007, 2.16101889e-005, 6.31867863e-007, 0.999982595, 6.72535407e-007, -2.05402212e-005, 5.8316482e-007, -0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.600000024, 0.400000006))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727e-005, 0.899765015, -1.62124634e-005, 0.999981761, -9.32578303e-007, -0.000175737689, -9.32731155e-007, -0.999982595, -1.02931472e-006, -0.000174665154, 9.40088398e-007, -0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
BladeHandle = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.19999998807907, "Toothpaste", "BladeHandle", Vector3.new(0.200000003, 0.400000006, 0.400000006))
BladeHandleweld = CreateWeld(m, FakeHandle, BladeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.05175781e-005, 1.99960327, 3.95774841e-005, -0.999981761, -1.32326576e-007, 0.000178653223, 1.3257916e-007, -0.999982715, 1.35444691e-006, 0.000177580674, 1.39915676e-006, 0.999998212))
CreateMesh("SpecialMesh", BladeHandle, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Hitbox = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Fossil", "Hitbox", Vector3.new(0.200000003, 3.4000001, 1.20000005))
Hitboxweld = CreateWeld(m, BladeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000122070313, -2.29992676, -0.000141143799, -0.999981761, 1.54720542e-011, 1.56042952e-005, -1.84014193e-011, -0.999982834, 5.96584471e-008, 1.66794853e-005, 5.96595839e-008, 0.999998212))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Mid gray", "Part", Vector3.new(0.200000003, 3.20000005, 0.600000024))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000122070313, -2.39953613, 0.299910545, -0.999981761, 1.11494702e-011, 4.91918036e-006, -1.47164086e-011, -0.999982834, 5.96425735e-008, 5.99455234e-006, 5.96437033e-008, 0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.300000012, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.62939453e-006, 0.100128174, 0.700077772, 0.999981761, 3.34093864e-012, -9.17352736e-008, -5.13478149e-013, -0.999982834, 5.95590421e-008, -1.16718002e-006, -5.95602003e-008, -0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Mid gray", "Part", Vector3.new(0.200000003, 3.20000005, 0.600000024))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727e-005, -2.39958191, 0.300290346, 0.999981761, -2.12692253e-010, -1.34985239e-005, -2.15749973e-010, -0.999982834, 5.94570011e-008, -1.45737504e-005, -5.94581344e-008, -0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.300000012, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.400000155, 0.200000018))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.15527344e-005, -0.400344849, 0.500155926, 0.999981761, -2.19540247e-010, -1.26651285e-005, -2.22647581e-010, -0.999982834, 5.94515797e-008, -1.37403622e-005, -5.94527094e-008, -0.999998212))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.300000012, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.15527344e-005, -0.499847412, -0.300111532, 0.999981761, -6.99822465e-007, 3.21262632e-006, 6.99820532e-007, 0.999982834, 2.40010445e-006, -2.13713793e-006, -2.40006443e-006, 0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.400000036, 0.200000003))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000137329102, 0.20010376, -0.299919605, 0.999981761, -4.54817467e-007, -5.03034971e-006, -4.54819144e-007, -0.999982834, 2.78908715e-007, -6.10571442e-006, -2.78904196e-007, -0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.62939453e-005, -0.599838257, 0.600077152, -0.999981761, 2.73906039e-007, -4.02069418e-006, 2.7390189e-007, 0.999982834, 2.64749633e-006, 2.9451985e-006, 2.64745267e-006, -0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.400000155, 0.200000018))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.62939453e-006, -0.400344849, 0.499759197, -0.999981761, 1.20092963e-011, 6.70757436e-006, -1.54696325e-011, -0.999982834, 5.96330949e-008, 7.78290996e-006, 5.96342247e-008, 0.999998212))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.300000012, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.600000143, 0.200000033))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.62939453e-005, -0.500274658, 0.699822426, -0.999981761, 2.13075807e-011, 1.29148029e-005, -2.44003914e-011, -0.999982834, 5.94436145e-008, 1.39900367e-005, 5.94447549e-008, 0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.300000012, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.600000024, 0.400000006))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000152587891, 0.29977417, -0.20009017, 0.999981761, -6.43139708e-012, -3.69289774e-006, 1.0355744e-011, 0.999982834, -2.66098255e-011, 4.76827699e-006, 2.8663294e-011, 0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.400000036, 0.200000003))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000183105469, 0.200149536, -0.300102234, -0.999981761, 1.49097339e-008, 4.5542256e-006, -1.49133381e-008, -0.999982834, 5.42441221e-008, 5.62959031e-006, 5.42452696e-008, 0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.800000072, 0.400000006))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(8.39233398e-005, -0.999664307, 0.200092554, 0.999981761, -3.95544708e-012, 4.41308657e-007, -7.84210197e-012, -0.999982834, 5.96419412e-008, -6.34157914e-007, -5.96430709e-008, -0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000152587891, 0.100143433, 0.500086546, 0.999981761, -5.8873878e-012, -3.42418934e-006, -9.54353263e-012, -0.999982834, 5.96374576e-008, -4.49957588e-006, -5.96385945e-008, -0.999998212))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.400000155, 0.600000024))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.62939453e-005, -0.599533081, 0.700154305, -0.999981761, -1.4772513e-008, 1.21978883e-005, -1.49355408e-008, 0.999982834, -1.2579485e-005, -1.32731293e-005, -1.25792931e-005, -0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.300000012, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.600000143, 0.200000003))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.86645508e-005, 0.0995178223, 0.700134993, 0.999981761, -2.18819241e-010, 9.61532351e-007, -2.22737162e-010, -0.999982834, 6.0835994e-008, -1.13912392e-007, -6.08371167e-008, -0.999998212))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.300000012, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.200000137, 0.600000024))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05175781e-005, -0.70022583, 0.300123453, 0.999981761, -2.20294477e-010, 6.77464413e-008, -2.24158456e-010, -0.999982834, 5.98086771e-008, -1.00770558e-006, -5.98098069e-008, -0.999998212))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.300000012, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.600000143, 0.200000003))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000122070313, 0.0997314453, 0.900169849, 0.999981761, -2.16103496e-010, 1.49953121e-006, -2.20052046e-010, -0.999982834, 6.14535409e-008, 4.24064638e-007, -6.14546636e-008, -0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.300000012, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.600000143, 0.200000033))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.62939453e-006, -0.500228882, 0.700129032, 0.999981761, -2.17749069e-010, -4.84001066e-006, -2.21319518e-010, -0.999982834, 5.9810489e-008, -5.91537537e-006, -5.98116188e-008, -0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.300000012, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.600000083, 0.200000003))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.91821289e-005, 0.100112915, 0.699890614, -0.999981761, 7.18990145e-012, -1.53825385e-006, -1.11410742e-011, -0.999982834, 5.976095e-008, -4.62780008e-007, 5.97621082e-008, 0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.600000024, 0.400000006))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.10351563e-005, 0.299789429, -0.199937344, -0.999981761, 2.7011865e-012, 1.49950938e-006, 6.31858454e-012, 0.999982834, -1.19261927e-007, -2.5749323e-006, -1.19262154e-007, -0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.800000072, 0.400000006))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000137329102, -0.999954224, 0.199864864, -0.999981761, 8.21773205e-012, 5.84091322e-006, -1.1729645e-011, -0.999982834, 5.96492384e-008, 6.91626337e-006, 5.96503753e-008, 0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727e-005, 0.100036621, 0.499933243, -0.999981761, 1.20618862e-011, 3.85295425e-006, -1.56922253e-011, -0.999982834, 5.96835577e-008, 4.92833351e-006, 5.96846945e-008, 0.999998212))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.400000036, 0.200000003))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05175781e-005, -0.399963379, 0.499933243, -0.999981761, 8.33516589e-012, 2.36118649e-006, -1.20545518e-011, -0.999982834, 5.96779444e-008, 3.43659485e-006, 5.96790812e-008, 0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.400000155, 0.600000024))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000183105469, -0.599578857, 0.699863434, 0.999981761, -1.50043302e-008, -5.07864752e-006, 1.50849182e-008, 0.999982834, 1.24600392e-005, 6.15401223e-006, -1.24598455e-005, 0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.300000012, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.600000143, 0.200000003))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000122070313, 0.0995788574, 0.699845791, -0.999981761, 1.22518801e-011, 6.45028194e-007, -1.60736077e-011, -0.999982834, 5.86622804e-008, 1.72046566e-006, 5.86634457e-008, 0.999998212))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.300000012, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.200000137, 0.600000024))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.86645508e-005, -0.700195313, 0.299836636, -0.999981761, 1.4545129e-011, 3.57317185e-006, -1.8192392e-011, -0.999982834, 5.96309135e-008, 4.64856566e-006, 5.96320504e-008, 0.999998212))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.300000012, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000137329102, -0.499862671, -0.299929142, -0.999981761, -6.99751979e-007, -2.97113729e-006, -6.99742486e-007, 0.999982834, -2.51947517e-006, 1.89564162e-006, -2.51943766e-006, -0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000122070313, -0.599853516, 0.599877834, 0.999981761, 2.73833876e-007, 3.43463034e-006, -2.73823105e-007, 0.999982834, -2.76679339e-006, -2.35912739e-006, 2.766752e-006, 0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.600000143, 0.200000003))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000198364258, 0.0998077393, 0.899896622, -0.999981761, 1.10282478e-011, -1.01601472e-007, -1.48965076e-011, -0.999982834, 5.82748356e-008, 9.73850547e-007, 5.82760045e-008, 0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.300000012, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.400000036, 0.200000003))
Partweld = CreateWeld(m, BladeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000183105469, -0.399810791, 0.500085354, 0.999981761, -1.92078298e-012, -1.94731547e-006, -5.66501013e-012, -0.999982834, 5.96335141e-008, -3.02273838e-006, -5.9634651e-008, -0.999998212))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
nooutline = function(part)
  part.TopSurface = 10
end

part = function(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = BrickColor.new(tostring(brickcolor))
  fp.Name = name
  fp.Size = size
  fp.Position = Character.Torso.Position
  nooutline(fp)
  fp.Material = material
  fp:BreakJoints()
  return fp
end

local fengui = it("GuiMain")
fengui.Parent = Ply.PlayerGui
fengui.Name = "WeaponGUI"
local fenframe = it("Frame")
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255, 255, 255)
fenframe.BackgroundTransparency = 1
fenframe.BorderColor3 = Color3.new(17, 17, 17)
fenframe.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
fenframe.Position = UDim2.new(0.4, 0, 0.1, 0)
local fenbarmana1 = it("TextLabel")
fenbarmana1.Parent = fenframe
fenbarmana1.Text = " "
fenbarmana1.BackgroundTransparency = 0
fenbarmana1.BackgroundColor3 = Color3.new(0, 0, 0)
fenbarmana1.SizeConstraint = "RelativeXY"
fenbarmana1.TextXAlignment = "Center"
fenbarmana1.TextYAlignment = "Center"
fenbarmana1.Position = UDim2.new(0, 0, 0, 0)
fenbarmana1.Size = UDim2.new(4, 0, 0.2, 0)
local fenbarmana2 = it("TextLabel")
fenbarmana2.Parent = fenframe
fenbarmana2.Text = " "
fenbarmana2.BackgroundTransparency = 0
fenbarmana2.BackgroundColor3 = Tor.Color
fenbarmana2.SizeConstraint = "RelativeXY"
fenbarmana2.TextXAlignment = "Center"
fenbarmana2.TextYAlignment = "Center"
fenbarmana2.Position = UDim2.new(0, 0, 0, 0)
fenbarmana2.Size = UDim2.new(4 * mana / 100, 0, 0.2, 0)
local fenbarmana3 = it("TextLabel")
fenbarmana3.Parent = fenframe
fenbarmana3.Text = " "
fenbarmana3.BackgroundTransparency = 0
fenbarmana3.BackgroundColor3 = Color3.new(Col1, Col2, Col3)
fenbarmana3.SizeConstraint = "RelativeXY"
fenbarmana3.TextXAlignment = "Center"
fenbarmana3.TextYAlignment = "Center"
fenbarmana3.Position = UDim2.new(0, 0, 0, 0)
fenbarmana3.Size = UDim2.new(0, 0, 0.2, 0)
local fenbarmana4 = it("TextLabel")
fenbarmana4.Parent = fenframe
fenbarmana4.Text = "Energy(" .. mana .. ")"
fenbarmana4.BackgroundTransparency = 1
fenbarmana4.BackgroundColor3 = Color3.new(0, 0, 0)
fenbarmana4.SizeConstraint = "RelativeXY"
fenbarmana4.TextXAlignment = "Center"
fenbarmana4.TextYAlignment = "Center"
fenbarmana4.Position = UDim2.new(0, 0, -0.3, 0)
fenbarmana4.Size = UDim2.new(4, 0, 0.2, 0)
fenbarmana4.FontSize = "Size9"
fenbarmana4.TextStrokeTransparency = 0
fenbarmana4.TextColor = BrickColor.new("White")
mesh = function(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    mesh.MeshId = meshid
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end

weld = function(parent, part0, part1, c0, c1)
  local weld = it("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  weld.C1 = c1
  return weld
end

local CFrameFromTopBack = function(at, top, back)
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

handle = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Handle", Vector3.new(0.200000003, 0.200000003, 0.510347784))
handleweld = weld(m, Character["Left Arm"], handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0134277344, -1.08377826, 0.236021042, -0.999991059, 1.64970497e-005, -3.57626704e-005, -1.64969497e-005, -0.999997199, -5.89981786e-010, -3.53156356e-005, -1.55431202e-015, 0.999991059))
mesh("BlockMesh", handle, "", "", Vector3.new(0, 0, 0), Vector3.new(0.850579858, 0.425290078, 1))
Barrel = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Barrel", Vector3.new(0.400000036, 0.600000024, 0.400000006))
Barrelweld = weld(m, handle, Barrel, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0165214539, -0.556964874, 1.65633035, -0.999990225, -1.64588746e-005, -3.51069939e-005, 3.59414771e-005, 5.92924765e-010, -0.99999088, 1.65416641e-005, -0.999996066, -2.07900868e-007))
mesh("BlockMesh", Barrel, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-8.77380371e-005, -0.551608682, 0.933853149, 0.999982119, 4.92241179e-006, 4.47023922e-007, -4.92275558e-006, 0.999994397, 5.18727006e-011, -1.34108632e-006, -6.88231694e-011, 0.999982119))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.425289869, 0.850580096, 0.850579739))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.263679713, 0.680464089, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000255584717, 1.23079586, 0.679197311, 0.999982119, 2.09204348e-010, 4.47023922e-007, -6.14797824e-010, 0.999994397, 7.37476746e-012, -1.34108632e-006, -2.21242469e-011, 0.999982119))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.850579739))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.200000003, 0.255169868))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.86645508e-005, -0.424460649, 0.127323151, 0.999991059, 2.60244997e-006, 5.95537131e-008, -2.60263118e-006, 0.999997079, 2.07900612e-007, -5.06588549e-007, -2.07909366e-007, 0.999991059))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.425283134, 0.425283283, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(2.04139137, 0.340232015, 0.255173892))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.466564178, -0.424417496, -0.00016784668, -2.27435266e-005, -0.999994159, 1.75410797e-011, 7.063058e-005, -1.58892144e-009, -0.999982119, 0.999982119, -2.27441906e-005, 6.97365176e-005))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.200000003, 0.255169958))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.7220459e-005, -0.0845518112, 0.127305984, 0.999982119, 1.79009203e-006, 4.76829882e-007, -1.79047493e-006, 0.999994397, 7.47768514e-012, -1.37088864e-006, -2.3080815e-011, 0.999982119))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.425289869, 0.425290078, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.425283313, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.14440918e-005, -0.254490614, -0.0425262451, 0.999982119, 4.47815211e-007, 5.0665767e-007, -4.48213513e-007, 0.999994397, 9.08723097e-012, -1.40071279e-006, -2.40636955e-011, 0.999982119))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.425283134, 1, 0.425283164))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.255173951, 1.44598627, 0.595405817))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000183105469, 1.35827327, 0.551862717, 0.999982119, 2.09204348e-010, 4.47023922e-007, -6.14797824e-010, 0.999994397, 7.37476746e-012, -1.34108632e-006, -2.21242469e-011, 0.999982119))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.61610174, 0.255173981, 0.255173892))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.254119873, -0.721702576, -0.000198364258, -2.27435994e-005, -0.999994636, -3.5085157e-011, 7.10776076e-005, -1.54646851e-009, -0.999982119, 0.999982119, -2.27442943e-005, 7.01835525e-005))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Light stone grey", "Part", Vector3.new(0.263679713, 0.200000003, 0.425289869))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00115585327, -0.551612258, 0.636695862, 0.999982119, 4.92261825e-006, 8.94047844e-007, -4.92297022e-006, 0.999994636, 6.63678834e-011, -1.78811024e-006, -8.55193139e-011, 0.999982119))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.850580096, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.680463791, 0.200000003, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.976444304, -0.294725418, -0.00431060791, -2.27435994e-005, -0.999994636, -3.5085157e-011, 7.10776076e-005, -1.54646851e-009, -0.999982119, 0.999982119, -2.27442943e-005, 7.01835525e-005))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.425290078, 0.850579798))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "White", "Part", Vector3.new(0.42528984, 0.200000003, 0.255173892))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.27387559, -0.636722565, -0.00016784668, -2.49764744e-005, -0.999994636, -3.70836695e-011, 7.10776076e-005, -1.7011863e-009, -0.999982119, 0.999982119, -2.49771983e-005, 7.01835525e-005))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.425290078, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "White", "Part", Vector3.new(0.200000003, 0.200000003, 0.255173892))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.10395718, -0.764104843, -0.000137329102, -2.49764744e-005, -0.999994636, -3.70836695e-011, 7.10776076e-005, -1.7011863e-009, -0.999982119, 0.999982119, -2.49771983e-005, 7.01835525e-005))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.425289869, 0.850580096, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.425289929, 0.340231895))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0043182373, 1.2733295, 0.0848426819, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.850579858, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Light stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.340231895))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00423049927, 1.01876116, 0.0848426819, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.850579858, 0.425290078, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.255173951, 0.200000003, 0.255173892))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727e-006, 0.0424911976, 0.97628212, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.850580096, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Cyan", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.48498535e-005, 0.084962368, 1.18850517, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.212644935, 0.212645039, 0.425289869))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0.5, "Cyan", "Part", Vector3.new(0.255173951, 0.200000003, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.48498535e-005, 0.084962368, 1.18850517, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.425290078, 0.850579798))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.680464029, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00429153442, -0.976130962, 0.297080994, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.850579858, 1, 0.425289869))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.255173951, 0.200000003, 0.595405877))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.10351563e-005, 0.594237328, 0.551851273, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.425290078, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.200000003, 0.425289869))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.169742584, 0.0849318504, 1.06118011, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.425289869, 0.425290078, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Light stone grey", "Part", Vector3.new(0.200000003, 0.510348022, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00430297852, 1.23086357, -0.127353668, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.850579858, 1, 0.425289869))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.255173951, 0.200000003, 0.850579739))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.34057617e-005, 2.1647141, 0.424444199, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.850580096, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.255173951, 0.595406055, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.57763672e-005, -0.339458823, 1.0612278, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.425289869))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.425289899, 0.200000003, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.91821289e-005, 0.084962368, 1.3158741, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.425290078, 0.425289869))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.510347903))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0848655701, 0.551791668, -5.91278076e-005, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.425289869, 0.850580096, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.200000003, 0.425289869))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.169647217, 0.0849175453, 1.06118774, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.425289869, 0.425290078, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.425290108, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.254673719, -0.212312698, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.850579858, 1, 0.425289869))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Light stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.425289869))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00430297852, 1.52808881, 0.0424671173, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.850579858, 0.425290078, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.21206665, -0.933796644, 0.679149628, -0.999982119, -5.58144457e-005, -8.9405512e-007, 5.58141619e-005, -0.999994636, 3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.850579858, 0.425290078, 0.850579798))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.127262115, 0.933843374, 0.679164886, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.850579858, 0.425290078, 0.850579739))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.255173951, 0.200000003, 0.340231895))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.14440918e-005, -2.1647017, -2.0980835e-005, -0.999982119, -5.58144457e-005, -8.9405512e-007, 5.58141619e-005, -0.999994636, 3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.850580096, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.510347903))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0848960876, 0.551814079, -1.90734863e-005, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.425289869, 0.850580096, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "White", "Part", Vector3.new(0.200000003, 0.200000003, 0.255173892))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.44389164, -0.764112473, -0.000137329102, -2.53405306e-005, -0.999997318, -2.07920962e-007, 7.14656417e-005, 2.06129954e-007, -0.999991059, 0.999991059, -2.53409107e-005, 7.10185996e-005))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.425289869, 0.850580096, 1))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.551600099, -0.891397476, 0.0849647522, -1.96261317e-005, -0.999994636, -7.89959209e-011, 7.10781751e-005, -1.28376709e-009, -0.999982119, 0.999982119, -1.96267902e-005, 7.018412e-005))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.850579858, 0.425290078, 0.425289869))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.255173862, 0.255174011, 0.595405817))
Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000217437744, -1.61367238, -0.551843643, -0.999982119, -3.15852139e-006, -8.79772415e-007, -3.15889542e-006, 0.999994636, -2.42164191e-007, 1.77383481e-006, -2.42149667e-007, -0.999982119))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.200000003, 0.34022662, 0.200000003))
Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.7220459e-005, 0.0848674774, 0.509426713, 0.999991059, 2.60264824e-006, 5.06588549e-007, -9.53623385e-007, 2.06911025e-007, 0.999991059, 2.60283809e-006, -0.999997318, 2.06918429e-007))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.425283134, 1, 0.425283164))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.551610351, -0.891412735, 0.0848731995, 2.05404231e-005, 0.999994636, 3.72684752e-007, 7.10960012e-005, 3.71262161e-007, -0.999982119, -0.999982119, 2.05411197e-005, -7.02019315e-005))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.850579858, 0.425290078, 0.425289869))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.551705599, 0.933855057, 0.0848388672, -2.27403962e-005, -0.999994636, -5.9601156e-008, -7.10774912e-005, -5.80205715e-008, 0.999982119, -0.999982119, 2.27410965e-005, -7.0183436e-005))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.850579858, 0.850580096, 0.425289869))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.551692009, 0.933879852, 0.0849609375, 2.27179899e-005, 0.999994636, -5.9531132e-008, -7.10859167e-005, 6.11118125e-008, 0.999982119, 0.999982119, -2.27186792e-005, 7.0191847e-005))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.850579858, 0.850580096, 0.425289869))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.200000003, 0.255168587, 0.200000003))
Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000110626221, 0.127298355, 0.169516325, 0.999982119, 2.23781717e-006, 9.2386108e-007, -1.81791984e-006, -1.01918163e-009, 0.999982119, 2.2382028e-006, -0.999994636, -1.0023522e-009))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.425289869, 1, 0.425289869))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "White", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00854873657, -1.57516098, 0.185529709, -0.999982119, -7.21350352e-006, -8.5031279e-006, -3.48015419e-006, 0.937103271, -0.349032491, 1.13240894e-005, -0.349036932, -0.937091589))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.850579858, 0.425290078, 0.425289869))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.425284624, 0.200000003))
Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000102996826, -0.0424919128, 0.0849627256, 0.999991059, 5.58147876e-005, 8.0466998e-007, 1.25170482e-006, -2.72474687e-009, -0.999991059, -5.58146457e-005, 0.999997318, -2.77701706e-009))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.850579858, 1, 0.425289869))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "White", "Wedge", Vector3.new(0.200000003, 0.255174011, 0.255173892))
Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00849533081, -1.76611137, 0.0303249359, -0.999982119, -7.41118401e-006, -9.01437488e-006, -3.18791808e-006, 0.928048849, -0.372439235, 1.19559481e-005, -0.372443885, -0.928037345))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.850579858, 1, 1))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.425284624, 0.200000003))
Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000106811523, 0.0424900055, 0.0849499702, -0.999982119, -4.47962549e-007, -6.40648068e-007, -1.53471046e-006, -1.13678156e-009, 0.999982119, -4.48370002e-007, 0.999994636, 1.12173104e-009))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.850579858, 1, 0.425289869))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.200000003, 0.255168587, 0.200000003))
Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000118255615, -0.12729454, 0.169492006, -0.999982119, -5.62619716e-005, -9.83487553e-007, 1.87754631e-006, -2.7208622e-009, -0.999982119, 5.62616806e-005, -0.999994636, 2.79091061e-009))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.425289869, 1, 0.425289869))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0847396851, 0.933885574, 0.0847232342, 0.999982119, 5.58591455e-005, 8.98660801e-007, -1.7927232e-006, -2.00105266e-008, 0.999982119, 5.58588581e-005, -0.999994636, -1.99453289e-008))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.425289869, 0.850580096, 0.425289869))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.2551741, 0.200000003))
Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0849990845, 0.339661598, -0.212226868, -0.999982119, -5.5915436e-005, -7.77094101e-007, -5.59151522e-005, 0.999994636, 1.02350157e-006, 1.67109829e-006, 1.02357262e-006, -0.999982119))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.425289869, 1, 0.425289869))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0849323273, 0.806465149, 0.169761658, 2.44998719e-005, 0.999994636, 1.26530392e-006, -7.12289184e-005, -1.2636109e-006, 0.999982119, 0.999982119, -2.45006886e-005, 7.03348342e-005))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.425289869, 0.425290078, 0.425289869))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.255173951, 0.425290108, 0.255173951))
Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.81469727e-006, 1.86757088, -0.127286911, -0.999982119, -5.5915436e-005, -7.77094101e-007, -5.59151522e-005, 0.999994636, 1.02350157e-006, 1.67109829e-006, 1.02357262e-006, -0.999982119))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.2551741, 0.200000003))
Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0848350525, 0.339640617, -0.212226868, -0.999982119, -5.5915436e-005, -7.77094101e-007, -5.59151522e-005, 0.999994636, 1.02350157e-006, 1.67109829e-006, 1.02357262e-006, -0.999982119))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.425289869, 1, 0.425289869))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.255173951, 0.340232044, 0.510347784))
Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05175781e-005, -0.8064816, 1.14440918e-005, 0.999982119, 5.58740467e-005, 1.35518712e-006, 5.58737629e-005, -0.999994636, -1.12400812e-006, 2.2491804e-006, 1.12411249e-006, -0.999982119))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0848121643, 0.933847427, 0.0847399235, 0.999982119, 5.58591455e-005, 8.98660801e-007, -1.7927232e-006, -2.00105266e-008, 0.999982119, 5.58588581e-005, -0.999994636, -1.99453289e-008))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.425289869, 0.850580096, 0.425289869))
Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0849186182, 0.806528091, 0.169620514, -2.46491363e-005, -0.999994636, -5.97645396e-007, -7.32047774e-005, -5.95885183e-007, 0.999982119, -0.999982119, 2.46499039e-005, -7.23107005e-005))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.425289869, 0.425290078, 0.425289869))
FirstAttack = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-0.5), math.rad(0), math.rad(-60)), 0.3)
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(0.5), math.rad(0), math.rad(60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -0.3) * RHCF * CFrame.Angles(math.rad(-5), math.rad(60), math.rad(-0.5)), 0.3)
    LH.C0 = clerp(LH.C0, CFrame.new(-0.9, -1, 0.2) * LHCF * CFrame.Angles(math.rad(-5), math.rad(60), math.rad(-0.5)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, -0.1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=199145095", Hitbox, 1, 1)
  local HitDeb = Hitbox.Touched:connect(function(hit)
    Damage(hit.Parent, 8, 0.2, BrickColor.new("Fossil"), BrickColor.new("Toothpaste"), "rbxassetid://199149137", 1)
  end
)
  for i = 0, 1, 0.1 do
    swait()
    RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-0.5), math.rad(0), math.rad(60)), 0.4)
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(0.5), math.rad(0), math.rad(-60)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(90)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(-50)), 0.4)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0.3) * RHCF * CFrame.Angles(math.rad(-5), math.rad(-60), math.rad(-0.5)), 0.4)
    LH.C0 = clerp(LH.C0, CFrame.new(-0.9, -1, -0.2) * LHCF * CFrame.Angles(math.rad(-5), math.rad(-60), math.rad(-0.5)), 0.4)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(0)), 0.4)
    BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
  end
  attack = false
  HitDeb:disconnect()
end

SecondAttack = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-0.5), math.rad(0), math.rad(70)), 0.3)
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(0.5), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.rad(0), math.rad(100), math.rad(130)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0.3) * RHCF * CFrame.Angles(math.rad(-5), math.rad(-60), math.rad(-0.5)), 0.3)
    LH.C0 = clerp(LH.C0, CFrame.new(-0.9, -1, -0.2) * LHCF * CFrame.Angles(math.rad(-5), math.rad(-60), math.rad(-0.5)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
    BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, -0.1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=199145146", Hitbox, 1, 1)
  local HitDeb = Hitbox.Touched:connect(function(hit)
    Damage(hit.Parent, math.random(7, 10), 0.2, BrickColor.new("Fossil"), BrickColor.new("Toothpaste"), "rbxassetid://199149186", 1)
  end
)
  for i = 0, 1, 0.1 do
    swait()
    RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-0.5), math.rad(0), math.rad(-70)), 0.4)
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(70)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(50)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-50)), 0.4)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -0.3) * RHCF * CFrame.Angles(math.rad(-5), math.rad(60), math.rad(-0.5)), 0.4)
    LH.C0 = clerp(LH.C0, CFrame.new(-0.9, -1, 0.2) * LHCF * CFrame.Angles(math.rad(-5), math.rad(60), math.rad(-0.5)), 0.4)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(-20)), 0.3)
    BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
  HitDeb:disconnect()
end

ThirdAttack = function()
  attack = true
  for i = 1, 2 do
    CreateSound("http://roblox.com/asset/?id=199145327", Hitbox, 0.7, 1)
    for i = 0, 1, 0.2 do
      swait()
      RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-0.5), math.rad(0), math.rad(-70)), 0.3)
      Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(70)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(30)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
      RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -0.3) * RHCF * CFrame.Angles(math.rad(-5), math.rad(60), math.rad(-0.5)), 0.3)
      LH.C0 = clerp(LH.C0, CFrame.new(-0.9, -1, 0.2) * LHCF * CFrame.Angles(math.rad(-5), math.rad(60), math.rad(-0.5)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(6 * i, math.rad(0), math.rad(0)), 0.8)
      BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
  end
  local HitDeb = Hitbox.Touched:connect(function(hit)
    Damage(hit.Parent, math.random(7, 10), 0.05, BrickColor.new("Fossil"), BrickColor.new("Toothpaste"), "rbxassetid://199149221", 1)
  end
)
  for i = 1, 4 do
    CreateSound("http://roblox.com/asset/?id=199145327", Hitbox, 0.7, 1)
    for i = 0, 1, 0.2 do
      swait()
      RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-0.5), math.rad(0), math.rad(70)), 0.3)
      Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(-70)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(50)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
      RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0.3) * RHCF * CFrame.Angles(math.rad(-5), math.rad(-60), math.rad(-0.5)), 0.3)
      LH.C0 = clerp(LH.C0, CFrame.new(-0.9, -1, -0.2) * LHCF * CFrame.Angles(math.rad(-5), math.rad(-60), math.rad(-0.5)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), 6 * i, math.rad(90)), 0.8)
      BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
  end
  attack = false
  HitDeb:disconnect()
end

ShootSounds = {233370753, 233370772}
PlaySound = function(id, pitch, parent, volume)
  if volume == nil then
    volume = tonumber(1)
  end
  local Sound = Instance.new("Sound")
  Sound.Name = "Epicosound"
  Sound.SoundId = "rbxassetid://" .. id
  Sound.Volume = volume
  Sound.Pitch = pitch
  Sound.Looped = false
  Sound.Parent = parent
  wait()
  Sound:Play()
  game:service("Debris"):AddItem(Sound, 8)
end

ShootSounds = {233370753, 233370772}
ShootSound = function(part)
  local shot = math.random(1, #ShootSounds)
  PlaySound(ShootSounds[shot], 1, part)
end

MagicCylinder = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, Char, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

so = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    swait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end
))
end

pewshoot = function(post, mindam, spready)
  local spread = Vector3.new(math.random(-spready, spready), math.random(-spready, spready), math.random(-spready, spready))
  local MouseLook = cf((post.Position + Mouse.Hit.p) / 2, Mouse.Hit.p + spread)
  local hit, pos = rayCast(post.Position, MouseLook.lookVector, 999, RP.Parent)
  local mag = (post.Position - pos).magnitude
  MagicCylinder(BrickColor.new("Toothpaste"), CFrame.new((post.Position + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 1.2, 0, 1.2, 0.1)
  if hit ~= nil then
    MagicCircle(BrickColor.new("Toothpaste"), cf(pos), 1, 1, 1, 0.5, 0.5, 0.5, 0.1)
    Damage(hit.Parent, mindam, 0, BrickColor.new("Fossil"), BrickColor.new("Toothpaste"), "rbxassetid://199149137", 1)
  end
end

MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, Character, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

ShootAttack = function()
  attack = true
  for i = 0, 1, 0.07 do
    swait()
    RJ.C0 = clerp(RJ.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.2)
    Tor.Neck.C0 = clerp(Tor.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(80)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-80)), 0.2)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.5) * angles(math.rad(0), math.rad(20), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-70), math.rad(-5)), 0.2)
  end
  for i = 1, math.random(3, 5) do
    swait(3)
    RJ.C0 = clerp(RJ.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.2)
    Tor.Neck.C0 = clerp(Tor.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(80)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-80)), 0.2)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.5) * angles(math.rad(0), math.rad(20), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-70), math.rad(-5)), 0.2)
    ShootSound(Barrel)
    pewshoot(Barrel, 7, 0.5)
    MagicCircle(BrickColor.new("Cyan"), Barrel.CFrame, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.06)
    RJ.C0 = clerp(RJ.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.2)
    Tor.Neck.C0 = clerp(Tor.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(80)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 1, 0) * angles(math.rad(-10), math.rad(0), math.rad(80)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(100), math.rad(0), math.rad(-80)), 0.2)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.5) * angles(math.rad(0), math.rad(20), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-70), math.rad(-5)), 0.2)
  end
  attack = false
end

ShootAttack2 = function()
  attack = true
  for i = 0, 1, 0.07 do
    swait()
    RJ.C0 = clerp(RJ.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.2)
    Tor.Neck.C0 = clerp(Tor.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(80)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-80)), 0.2)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.5) * angles(math.rad(0), math.rad(20), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-70), math.rad(-5)), 0.2)
  end
  for i = 1, math.random(13, 15) do
    swait(2)
    RJ.C0 = clerp(RJ.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.2)
    Tor.Neck.C0 = clerp(Tor.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(80)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-80)), 0.2)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.5) * angles(math.rad(0), math.rad(20), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-70), math.rad(-5)), 0.2)
    ShootSound(Barrel)
    pewshoot(Barrel, 8, 0.65)
    MagicCircle(BrickColor.new("Cyan"), Barrel.CFrame, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.06)
    RJ.C0 = clerp(RJ.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.2)
    Tor.Neck.C0 = clerp(Tor.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(80)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 1, 0) * angles(math.rad(-10), math.rad(0), math.rad(80)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(100), math.rad(0), math.rad(-80)), 0.2)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.5) * angles(math.rad(0), math.rad(20), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-70), math.rad(-5)), 0.2)
  end
  attack = false
end

WaveEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart("Custom", Character, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

SphereEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart("Custom", Character, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

SummonShards = function(Color)
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-0.5), math.rad(0), math.rad(80)), 0.3)
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(-80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(80)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0.3) * RHCF * CFrame.Angles(math.rad(-5), math.rad(-60), math.rad(-0.5)), 0.3)
    LH.C0 = clerp(LH.C0, CFrame.new(-0.9, -1, -0.2) * LHCF * CFrame.Angles(math.rad(-5), math.rad(-60), math.rad(-0.5)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 0.8)
    BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  Hu.WalkSpeed = 0
  do
    for i = 1, 5 do
      local Shard = CreatePart(3, m, "Neon", 0, 0.5, Color, "Shard", Vector3.new(5, 5, 5))
      local smsh = CreateMesh("SpecialMesh", Shard, "FileMesh", "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 3))
      Shard.Anchored = true
      local newCF = CFrame.new(math.random(-600, 600) / 100, math.random(500, 1000) / 100, math.random(-600, 600) / 100)
      Shard.CFrame = CFrame.new(RP.Position) * newCF
      Shard.CFrame = CFrame.new(Shard.Position, mouse.Hit.p) * CFrame.fromEulerAnglesXYZ(3.14, 0, 0)
      SphereEffect(Color, Shard.CFrame, 5, 5, 10, 1, 1, 3, 0.1)
      CreateSound("http://roblox.com/asset/?id=278596476", Shard, 1, 1.5)
      game:GetService("Debris"):AddItem(Shard, 10)
      local hitt = false
      local con = Shard.Touched:connect(function(hit)
    if hitt == true then
      return 
    end
    hitt = true
    if hit.Name ~= "Shard" then
      print("hit")
      local ref = CreatePart(3, workspace, "Neon", 0, 1, hit.BrickColor, "Effect", Vector3.new())
      ref.Anchored = true
      ref.CFrame = CFrame.new(Shard.Position)
      SphereEffect(Color, CFrame.new(ref.Position), 1, 1, 1, 2, 2, 2, 0.05)
      game:GetService("Debris"):AddItem(ref, 1)
      Shard.Touched:connect(function(hit)
      Damage(hit.Parent, math.random(5, 10), 0, BrickColor.new("Fossil"), BrickColor.new("Toothpaste"), "rbxassetid://199149137", 1)
    end
)
    end
    do
      local debounce = Instance.new("BoolValue")
      debounce.Name = "DebounceHit"
      debounce.Parent = hit.Parent
      debounce.Value = true
      game:GetService("Debris"):AddItem(debounce, 0.5)
    end
  end
)
      coroutine.resume(coroutine.create(function(Part, Cframe, numb)
    while 1 do
      while 1 do
        if Part.Parent ~= nil then
          swait()
          numb = numb - 1
          if numb <= 0 then
            Part.CFrame = Part.CFrame * CFrame.new(0, 0, 2)
            -- DECOMPILER ERROR at PC17: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC17: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC17: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC17: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      Part.CFrame = CFrame.new(RP.Position) * Cframe
      Part.CFrame = CFrame.new(Part.Position, mouse.Hit.p) * CFrame.fromEulerAnglesXYZ(3.14, 0, 0)
    end
  end
), Shard, newCF, i)
    end
  end
  wait(1)
  Hu.WalkSpeed = 16
  attack = false
end

Boomerang = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(0.5), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(70), math.rad(-0.5)), 0.3)
    LH.C0 = clerp(LH.C0, CFrame.new(-0.9, -1, 0.2) * LHCF * CFrame.Angles(math.rad(-5), math.rad(70), math.rad(-0.5)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(150), math.rad(0), math.rad(0)), 0.8)
    BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, -0.1, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.3)
  end
  local HitDeb = Hitbox.Touched:connect(function(hit)
    Damage(hit.Parent, math.random(7, 13), 0, BrickColor.new("Fossil"), BrickColor.new("Toothpaste"), "rbxassetid://199149186", 1)
  end
)
  for i = 1, 5 do
    CreateSound("http://roblox.com/asset/?id=199145095", Hitbox, 1, 1.3)
    for i = 0, 1, 0.2 do
      swait()
      SphereEffect(BrickColor.new("Toothpaste"), CFrame.new(BladeHandle.Position), 0.3, 0.3, 0.3, 0.2, 0.2, 0.2, 0.05)
      RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
      Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(0.5), math.rad(0), math.rad(-70)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(90)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(-30)), 0.3)
      RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(-70), math.rad(-0.5)), 0.3)
      LH.C0 = clerp(LH.C0, CFrame.new(-0.9, -1, 0.2) * LHCF * CFrame.Angles(math.rad(-5), math.rad(-70), math.rad(-0.5)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
      BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, 7, 0) * CFrame.Angles(6 * i, math.rad(0), math.rad(0)), 0.8)
    end
  end
  HitDeb:disconnect()
  attack = false
end

Laser = function(Part, Dmg)
  sp = Part.Position
  dirr = Part.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  local hit, pos = rayCast(sp, dirr.lookVector, 100, Character)
  local las = Instance.new("Part", Character)
  las.Material = "SmoothPlastic"
  las.Anchored = true
  las.Locked = true
  las.CanCollide = false
  las.TopSurface = 0
  las.BottomSurface = 0
  las.FormFactor = "Custom"
  las.BrickColor = BrickColor.new("Toothpaste")
  las.Size = Vector3.new(1, 1, 1)
  las.CFrame = CFrame.new((Part.Position + pos) / 2, pos) * CFrame.Angles(math.rad(90), 0, 0)
  local msh = Instance.new("SpecialMesh", las)
  mag = (Part.Position - pos).magnitude
  msh.Scale = Vector3.new(0.1, mag, 0.1)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, 0.1 do
      wait()
      Part.Transparency = Part.Transparency + 0.1
      Mesh.Scale = Mesh.Scale + Vector3.new(0.15, 0.7, 0.15)
    end

  end
), las, msh)
  if pos ~= nil then
    local las2 = Instance.new("Part", Character)
    las2.Material = "SmoothPlastic"
    las2.Anchored = true
    las2.Locked = true
    las2.CanCollide = false
    las2.TopSurface = 0
    las2.BottomSurface = 0
    las2.FormFactor = "Custom"
    las2.BrickColor = BrickColor.new("Toothpaste")
    las2.Size = Vector3.new(1, 1, 1)
    las2.CFrame = CFrame.new(pos) * CFrame.Angles(math.rad(90), 0, 0)
    local msh = Instance.new("SpecialMesh", las2)
    msh.MeshType = "Sphere"
    mag = (Part.Position - pos).magnitude
    msh.Scale = Vector3.new(0.1, 0.1, 0.1)
    coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, 0.1 do
      wait()
      Part.Transparency = Part.Transparency + 0.1
      Mesh.Scale = Mesh.Scale + Vector3.new(0.5, 0, 0.5)
    end
 
  end
), las2, msh)
  end
  do
    if hit ~= nil and pos ~= nil then
      if hit.Parent.className == "Hat" then
        hit:BreakJoints()
        hit.Velocity = Vector3.new(math.random(-5, 5), 20, math.random(-5, 5))
      end
      if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Ply.Name then
        hit.Parent.Humanoid:TakeDamage(Dmg)
      end
    end
  end
end

dashleft = function()
  attack = true
  for i = 0, 1, 0.2 do
    swait()
    MagicCircle(BrickColor.new("Toothpaste"), Tor.CFrame, 5, 5, 5, 5, 5, 5, 0.06)
    RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-100)), 0.3)
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(10), math.rad(0), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(70), math.rad(-0.5)), 0.3)
    LH.C0 = clerp(LH.C0, CFrame.new(-0.9, -1, 0.2) * LHCF * CFrame.Angles(math.rad(-5), math.rad(70), math.rad(-0.5)), 0.3)
  end
  so("http://www.roblox.com/asset/?id=231917758", Tor, 1, 1)
  for i = 0, 1, 0.1 do
    Tor.Velocity = Tor.CFrame.lookVector * -150
  end
  for i = 0, 1, 0.1 do
    swait()
    MagicCircle(BrickColor.new("Toothpaste"), Tor.CFrame, 2, 2, 2, 2, 2, 2, 0.06)
    RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-100)), 0.3)
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(10), math.rad(0), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(70), math.rad(-0.5)), 0.3)
    LH.C0 = clerp(LH.C0, CFrame.new(-0.9, -1, 0.2) * LHCF * CFrame.Angles(math.rad(-5), math.rad(70), math.rad(-0.5)), 0.3)
  end
  attack = false
end

dashright = function()
  attack = true
  for i = 0, 1, 0.2 do
    swait()
    MagicCircle(BrickColor.new("Toothpaste"), Tor.CFrame, 5, 5, 5, 5, 5, 5, 0.06)
    RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(70), math.rad(-0.5)), 0.3)
    LH.C0 = clerp(LH.C0, CFrame.new(-0.9, -1, 0.2) * LHCF * CFrame.Angles(math.rad(-5), math.rad(70), math.rad(-0.5)), 0.3)
  end
  so("http://www.roblox.com/asset/?id=231917758", Tor, 1, 1)
  for i = 0, 1, 0.1 do
    Tor.Velocity = Tor.CFrame.lookVector * -150
  end
  for i = 0, 1, 0.1 do
    swait()
    MagicCircle(BrickColor.new("Toothpaste"), Tor.CFrame, 2, 2, 2, 2, 2, 2, 0.06)
    RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(70), math.rad(-0.5)), 0.3)
    LH.C0 = clerp(LH.C0, CFrame.new(-0.9, -1, 0.2) * LHCF * CFrame.Angles(math.rad(-5), math.rad(70), math.rad(-0.5)), 0.3)
  end
  attack = false
end

SpinShot = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(0.5), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(-90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(70), math.rad(-0.5)), 0.3)
    LH.C0 = clerp(LH.C0, CFrame.new(-0.9, -1, 0.2) * LHCF * CFrame.Angles(math.rad(-5), math.rad(70), math.rad(-0.5)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)), 0.8)
    BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, -0.1, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.9 do
    swait()
    CreateSound("http://roblox.com/asset/?id=199145095", Hitbox, 1, 1.3)
    for i = 0, 1, 0.1 do
      swait()
      ShootSound(Barrel)
      Laser(Barrel, 20)
      MagicCircle(BrickColor.new("Toothpaste"), Barrel.CFrame, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.06)
      SphereEffect(BrickColor.new("Toothpaste"), CFrame.new(BladeHandle.Position), 0.3, 0.3, 0.3, 0.2, 0.2, 0.2, 0.05)
      RJ.C0 = clerp(RJ.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), -5 * i), 0.3)
      Tor.Neck.C0 = clerp(Tor.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(80)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-80)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(60)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-70), math.rad(70)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
      BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, 7, 0) * CFrame.Angles(6 * i, math.rad(0), math.rad(0)), 0.8)
    end
  end
  attack = false
end

ob1u = function()
end

ob1d = function()
  if attack == false and Combo == 1 then
    Combo = 2
    FirstAttack()
  else
    if attack == false and Combo == 2 then
      Combo = 3
      SecondAttack()
    else
      if attack == false and Combo == 3 then
        Combo = 4
        ThirdAttack()
      else
        if attack == false and Combo == 4 then
          Combo = 1
          ShootAttack()
        end
      end
    end
  end
end

key = function(k)
  k = k:lower()
  if k == "z" and attack == false and mana >= 25 then
    SummonShards(BrickColor.new("Toothpaste"))
    mana = 100
  else
    if k == "x" and attack == false and mana >= 20 then
      Boomerang()
      mana = 100
    else
      if k == "c" and attack == false and mana >= 35 then
        ShootAttack2()
        mana = 100
      else
        if k == "v" and attack == false and mana >= 45 then
          SpinShot()
          mana = 100
        else
          if k == "q" and attack == false and mana >= 5 then
            dashleft()
            mana = 100
          else
            if k == "e" and attack == false and mana >= 5 then
              mana = 100
              dashright()
            end
          end
        end
      end
    end
  end
end

Bin = script.Parent
ds = function(mouse)
end

s = function(mouse)
  print("Selected")
  mouse.Button1Down:connect(function()
    ob1d(mouse)
  end
)
  mouse.Button1Up:connect(function()
    ob1u(mouse)
  end
)
  mouse.KeyDown:connect(key)
end

Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
local sine = 0
local change = 1
local val = 0
local donum = 0
local mananum = 0
while 1 do
  while 1 do
    while 1 do
      pwait()
      sine = sine + change
      local torvel = RP.Velocity * Vector3.new(1, 0, 1).magnitude
      local velderp = RP.Velocity.y
      hitfloor = rayCast(RP.Position, CFrame.new(RP.Position, RP.Position - Vector3.new(0, 1, 0)).lookVector, 4, Char)
      if equipped == true or equipped == false then
        if 0.5 <= donum then
          handidle = true
        else
          if donum <= 0 then
            handidle = false
          end
        end
        if handidle == false then
          donum = donum + 0.003
        else
          donum = donum - 0.003
        end
        if 1 < RP.Velocity.y and hitfloor == nil then
          Anim = "Jump"
          if attack == false then
            RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(10)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.3)
            RH.C0 = clerp(RH.C0, CFrame.new(1, -0.5, -0.3) * RHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(-20)), 0.3)
            LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
            FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
            BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, -0.1 + (donum) / 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          end
        else
          if RP.Velocity.y < -1 and hitfloor == nil then
            Anim = "Fall"
            if attack == false then
              RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(20)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.3)
              RH.C0 = clerp(RH.C0, CFrame.new(1, -0.8, 0) * RHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
              LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
              FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
              BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, -0.1 + (donum) / 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            end
          else
            if torvel.x < 1 or torvel.z < 1 and hitfloor ~= nil then
              Anim = "Idle"
              if attack == false then
                RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-0.5) + (donum) / 3.5, math.rad(0), math.rad(-40)), 0.3)
                Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(0.5) - (donum) / 3.5, math.rad(0), math.rad(40)), 0.3)
                RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-1) - (donum) / 2, math.rad(1) - (donum) / 2, math.rad(2) + (donum) / 2), 0.3)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(5) + (donum) / 2, math.rad(0), math.rad(-2) - (donum) / 2), 0.3)
                RH.C0 = clerp(RH.C0, CFrame.new(1, -1 - (donum) / 6, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(20), math.rad(-0.5) + (donum) / 3.5), 0.3)
                LH.C0 = clerp(LH.C0, CFrame.new(-0.9, -1, 0.2) * LHCF * CFrame.Angles(math.rad(-5), math.rad(40), math.rad(-0.5) - (donum) / 3.5), 0.3)
                FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10) - (donum) / 2, math.rad(0), math.rad(-10)), 0.3)
                BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, -0.1 + (donum) / 3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              end
            else
              if 2 < torvel.x or torvel.z > 2 and hitfloor ~= nil then
                Anim = "Walk"
                if attack == false then
                  RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
                  Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
                  RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-20) - (donum) / 2, math.rad(0), math.rad(10) + (donum) / 2), 0.3)
                  LW.C0 = clerp(LW.C0, CFrame.new(-0.6, 0.6, -0.9) * CFrame.Angles(math.rad(30) + (donum) / 2, math.rad(-30), math.rad(80)), 0.3)
                  RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                  LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                  FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5) - (donum) / 1, math.rad(0), math.rad(0)), 0.3)
                  BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, -0.1 + (donum) / 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                end
              end
            end
          end
        end
      end
      if 0 < #Effects then
        for e = 1, #Effects do
          if Effects[e] ~= nil then
            local Thing = Effects[e]
            if Thing ~= nil then
              local Part = Thing[1]
              local Mode = Thing[2]
              local Delay = Thing[3]
              local IncX = Thing[4]
              local IncY = Thing[5]
              local IncZ = Thing[6]
              if Thing[1].Transparency <= 1 then
                if Thing[2] == "Block1" then
                  Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                  Mesh = Thing[1].Mesh
                  Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                else
                  if Thing[2] == "Cylinder" then
                    Mesh = Thing[1].Mesh
                    Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                  else
                    if Thing[2] == "Blood" then
                      Mesh = Thing[7]
                      Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
                      Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    else
                      if Thing[2] == "Elec" then
                        Mesh = Thing[1].Mesh
                        Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                      else
                        if Thing[2] == "Disappear" then
                          Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        end
                      end
                    end
                  end
                end
              else
  
                table.remove(Effects, e)
              end
            end
          end
        end
      end
      do
        fenbarmana2:TweenSize((UDim2.new(4 * mana / 100, 0, 0.2, 0)), nil, 1, 0.4, true)
        fenbarmana4.Text = "[Mana]  <{[  " .. mana .. "  ]}> [Mana]"
        if 100 <= mana then
          mana = 100
          -- DECOMPILER ERROR at PC9553: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC9553: LeaveBlock: unexpected jumping out IF_STMT

          -- DECOMPILER ERROR at PC9553: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
    if mananum <= 8 then
      mananum = 100
      -- DECOMPILER ERROR at PC9559: LeaveBlock: unexpected jumping out IF_THEN_STMT

      -- DECOMPILER ERROR at PC9559: LeaveBlock: unexpected jumping out IF_STMT

    end
  end
  mananum = 100
  mana = 100
end

