-- Crystal Gauntlet --
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
LS = Torso["Left Shoulder"]
LH = Torso["Left Hip"]
RS = Torso["Right Shoulder"]
RH = Torso["Right Hip"]
Neck = Torso.Neck
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
attack = false
attacktype = 1
attackdebounce = false
ssdebounce=false
MMouse=nil
combo=0
local CrystalNumb=0
local Crystals={}
CrystalColor=BrickColor.new("Silver")
crystal = BrickColor.new("Silver")
--player
player = nil
--save shoulders
RSH, LSH = nil, nil
--welds
RW, LW = Instance.new("Weld"), Instance.new("Weld")
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
if Character:findFirstChild("Crystal Gauntlet",true) ~= nil then
Character:findFirstChild("Crystal Gauntlet",true).Parent = nil
end
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp = it("Part")
fp.Material = "SmoothPlastic"
fp.formFactor = formfactor
fp.Parent = parent
fp.Reflectance = reflectance
fp.Transparency = transparency
fp.CanCollide = false
fp.Locked=true
fp.BrickColor = brickcolor
fp.Name = name
fp.Size = size
fp.Position = Torso.Position
fp.BottomSurface="SmoothNoOutlines"
fp.TopSurface="SmoothNoOutlines"
fp.LeftSurface="SmoothNoOutlines"
fp.RightSurface="SmoothNoOutlines"
fp:BreakJoints()
return fp
end
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh = it(Mesh)
mesh.Parent = part
if Mesh=="SpecialMesh" then
mesh.MeshType = meshtype
mesh.MeshId = meshid
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
function weld(parent,part0,part1,c0)
local weld = it("Weld")
weld.Parent = parent
weld.Part0 = part0
weld.Part1 = part1
weld.C0 = c0
return weld
end
local modelzorz = Instance.new("Model")
modelzorz.Parent = Character
modelzorz.Name = "Crystal Gauntlet"
local prt1=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part1",vt(1,1,1))
local prt2=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part2",vt(1,1,1))
local prt3=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part3",vt(1,1,1))
local prt4=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part4",vt(1,1,1))
local prt5=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part5",vt(1,1,1))
local prt6=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part6",vt(1,1,1))
local prt7=part(3,modelzorz,0,0,BrickColor.new("Silver"),"Part7",vt(1,1,1))
local msh1=mesh("BlockMesh",prt1,"","",vt(0,0,0),vt(1.1,0.6,1.1))
local msh2=mesh("BlockMesh",prt2,"","",vt(0,0,0),vt(1.1,0.8,0.5))
local msh3=mesh("CylinderMesh",prt3,"","",vt(0,0,0),vt(0.8,0.2,0.8))
local msh4=mesh("BlockMesh",prt4,"","",vt(0,0,0),vt(1.05,0.2,1.05))
local msh5=mesh("BlockMesh",prt5,"","",vt(0,0,0),vt(0.5,0.65,0.2))
local msh6=mesh("BlockMesh",prt6,"","",vt(0,0,0),vt(0.2,0.65,1.01))
local msh7=mesh("SpecialMesh",prt7,"Sphere","",vt(0,0,0),vt(0.6,0.6,0.6))
local wld1=weld(prt1,prt1,LeftArm,euler(0,0,0)*cf(0,-0.5,0))
local wld2=weld(prt2,prt2,prt1,euler(0,0,0)*cf(0,0.7,0))
local wld3=weld(prt3,prt3,prt2,euler(0,0,1.57)*cf(0.5,0.4,0))
local wld4=weld(prt4,prt4,prt2,euler(0,0,0)*cf(0,0.2,0))
local wld5=weld(prt5,prt5,prt4,euler(0,0,0)*cf(0.3,0.3,0))
local wld6=weld(prt6,prt6,prt4,euler(0,0,0)*cf(0,0.3,0))
local wld7=weld(prt7,prt7,prt3,euler(0,0,0)*cf(0,0,0))
if (script.Parent.className ~= "HopperBin") then
Tool = Instance.new("HopperBin")
Tool.Parent = Backpack
Tool.Name = "Crystal Gauntlet"
script.Parent = Tool
end
Bin = script.Parent
local bg = it("BodyGyro")
bg.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge
bg.P = 20e+003
bg.Parent = nil
so = function(id,par,vol,pit)
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
wait()
sou:play()
wait(6)
sou:Remove()
end))
end
function hideanim()
equipped=false
wait(0.1)
bg.Parent=nil
end
function equipanim()
equipped=true
wait(0.1)
RW.C0=cf(1.5, 0.5, 0) * euler(0.2,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0.8,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,-0.5,0.4)
end
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
spread=2
range=500
rangepower=50
function shoottrail(mouse,baseprt)
coroutine.resume(coroutine.create(function()
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread))) * (baseprt.Position-MMouse.Hit.p).magnitude/100
local dir = CFrame.new((baseprt.Position+MMouse.Hit.p)/2,MMouse.Hit.p+spreadvector)
local hit,pos = rayCast(baseprt.Position,dir.lookVector,10,modelzorz)
local rangepos = range
local function drawtrail(From,To)
local effectsmsh = Instance.new("CylinderMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = modelzorz
effectsmsh.Parent = effectsg
effectsg.BrickColor = CrystalColor
effectsg.Reflectance = 0.4
glow = Instance.new("PointLight")
glow.Parent = prt
glow.Range = 6
glow.Brightness = 5
glow.Color = crystal.Color
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(2,mg*5,2)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(1-1*i,mg*5,1-1*i)
end
effectsg.Parent = nil
end))
end
local newpos = baseprt.Position
local inc = rangepower
repeat
wait() wait()
rangepos = rangepos - 10
dir = dir * CFrame.Angles(math.rad(-1),0,0)
hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
drawtrail(newpos,pos)
newpos = newpos + (dir.lookVector * inc)
if inc >= 20 then
inc = inc - 10
end
if hit ~= nil then
rangepos = 0
end
until rangepos <= 0
if hit ~= nil then
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Humanoid
tTorso=hit.Parent.Torso
Damagefunc1(hit,5,30)
attackdebounce=false
--ADmg(hum,hit)
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Parent.Humanoid
tTorso=hit.Parent.Parent.Torso
Damagefunc1(hit.Parent.Parent.Torso,5,30)
attackdebounce=false
--ADmg(hum,hit)
end
end
end))
end
function MagicCircle(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x2,y2,z2)
glow = Instance.new("PointLight")
glow.Parent = prt
glow.Range = 4
glow.Brightness = 5
glow.Color = crystal.Color
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function()
for i=0,1,0.1 do
wait()
prt.CFrame=prt.CFrame
prt.Transparency=i
msh.Scale=msh.Scale+vt(x3,y3,z3)
end
prt.Parent=nil
end))
end
function SpecialEffect()
local prt=part(3,workspace,1,0,BrickColor.new("Silver"),"Part",vt(1,1,1))
prt.Anchored=true
prt.CFrame=Torso.CFrame
glow = Instance.new("PointLight")
glow.Parent = prt
glow.Range = 4
glow.Brightness = 5
glow.Color = crystal.Color
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
coroutine.resume(coroutine.create(function(Part,Mesh)
for i=0,1,0.2 do
wait(0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(10,10,10)
end
prt.Parent=nil
end),prt,msh)
end
Damagefunc1=function(hit,Damage,Knockback)
if hit.Parent==nil then
 return
end
CPlayer=Bin
h=hit.Parent:FindFirstChild("Humanoid")
if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
if attackdebounce == false then
attackdebounce = true
coroutine.resume(coroutine.create(function()
wait(0.2)
attackdebounce = false
end))
Damage=Damage
--[[  if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
  return
 end]]
--   hs(hit,1.2)
  c=Instance.new("ObjectValue")
  c.Name="creator"
  c.Value=game.Players.LocalPlayer
  c.Parent=h
  game:GetService("Debris"):AddItem(c,.5)
 Damage=Damage+math.random(0,10)
--  h:TakeDamage(Damage)
 blocked=false
 block=hit.Parent:findFirstChild("Block")
 if block~=nil then
 print("herp")
 if block.Value>0 then
 blocked=true
 block.Value=block.Value-1
 print(block.Value)
 end
 end
 if blocked==false then
--  h:TakeDamage(Damage)
 h.Health=h.Health-Damage
 showDamage(hit.Parent,Damage,.5)
 else
 h:TakeDamage(1)
 showDamage(hit.Parent,1,.5)
 end
 vp=Instance.new("BodyVelocity")
 vp.P=500
 vp.maxForce=Vector3.new(math.huge,0,math.huge)
--  vp.velocity=Character.Torso.CFrame.lookVector*Knockback
 vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
 if Knockback>0 then
  vp.Parent=hit.Parent.Torso
 end
 game:GetService("Debris"):AddItem(vp,.25)
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
Damagefunc2=function(hit,Damage,Knockback)
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
blocked=false
h=hit.Parent:FindFirstChild("Humanoid")
if h~=nil and hit.Parent:FindFirstChild("Torso")~=nil then
 Damage=Damage
  c=it("ObjectValue")
  c.Name="creator"
  c.Value=game.Players.LocalPlayer
  c.Parent=h
  game:GetService("Debris"):AddItem(c,.5)
--   print(c.Value)
--[[  if math.random(0,99)+math.random()<=7.8 then
  CRIT=true
  Damage=Damage*2
  s=it("Sound")
  s.SoundId="http://www.roblox.com/asset/?id=2801263"
  s.Volume=1
  s.Pitch=2
  s.Parent=hit
  s.PlayOnRemove=true
  s.Parent=nil

 end]]
 Damage=Damage+math.random(0,10)
--  Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
 blocked=false
 block=hit.Parent:findFirstChild("Block")
 if block~=nil then
 print("herp")
 if block.Value>0 then
 blocked=true
 block.Value=block.Value-3
 print(block.Value)
 end
 end
 if blocked==false then
--  h:TakeDamage(Damage)
 h.Health=h.Health-Damage
 showDamage(hit.Parent,Damage,.5)
 else
 h:TakeDamage(1)
 showDamage(hit.Parent,1,.5)
 end
--if blocked==false then
local angle = (hit.Position-(Torso.Position+Vector3.new(0,0,0))).unit
print(angle)
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
 rl=Instance.new("BodyAngularVelocity")
 rl.P=3000
 rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
 rl.angularvelocity=Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
 rl.Parent=hit
coroutine.resume(coroutine.create(function(vel)
wait(1)
vel:Remove()
end),rl)
--end
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,0,0)
bodyVelocity.P=5000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=hit
coroutine.resume(coroutine.create(function(Vel)
wait(0.7)
Vel:Remove()
end),bodyVelocity)
   c=it("ObjectValue")
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
c.Material = "SmoothPlastic"
c.Transparency=0
c.BrickColor=BrickColor:Red()
if CRIT==true then
 c.BrickColor=BrickColor.new("Really red")
end
c.Name="Head"
c.TopSurface=0
c.BottomSurface=0
c.formFactor="Plate"
c.Size=Vector3.new(1,.4,1)
ms=Instance.new("CylinderMesh")
ms.Scale=Vector3.new(.8,.8,.8)
if CRIT==true then
 ms.Scale=Vector3.new(1,1.25,1)
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
function CrystalEffect(crystal)
clone=crystal:Clone()
clone.Parent=workspace
clone.Anchored=true
clone.CFrame=crystal.CFrame
glow = Instance.new("PointLight")
glow.Parent = clone
glow.Range = 9
glow.Brightness = 6
glow.Color = crystal.Color
Mesh=clone.Mesh
coroutine.resume(coroutine.create(function(Part,Meshh)
for i=0.5,1,0.05 do
wait()
Part.Transparency=i
Meshh.Scale=Meshh.Scale+vt(0.3,0.3,0.3)
end
Part.Parent=nil
end),clone,Mesh)
end
function MakeCrystals()
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(0.2-0.4*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0.8+0.77*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,-0.5+2.07*i,0.4-0.4*i)
end
while crystalhold==true do
if CrystalNumb<8 then
so("http://www.roblox.com/asset/?id=106626284",Torso,1,2)
CrystalEffect(prt7)
CrystalNumb=CrystalNumb+1
print(CrystalNumb)
local base=part(3,modelzorz,0,1,BrickColor.new("Silver"),"Part1",vt(1,1,1))
base.Anchored=true
base.CFrame=prt7.CFrame
table.insert(Crystals,base)
local crystall=part(3,base,0.4,0,CrystalColor,"Crystal",vt(2,2,2))
local msh=mesh("SpecialMesh",crystall,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(2,2,2))
glow = Instance.new("PointLight")
glow.Parent = crystall
glow.Range = 4.5
glow.Brightness = 4.5
glow.Color = crystal.Color
crystall.Anchored=false
crystall.CFrame=base.CFrame
fd=Instance.new("BodyPosition")
fd.P=10000
fd.D=1000
fd.maxForce=Vector3.new(math.huge,math.huge,math.huge)
fd.position=base.Position
fd.Parent=crystall
coroutine.resume(coroutine.create(function(BodyPos,Part,BasePart)
while BasePart.Parent~=nil do
wait()
BodyPos.position=BasePart.Position
end
Part.Parent=nil
end),fd,crystall,base)
end
wait(0.5)
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(-0.2+0.4*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57-0.77*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57-2.07*i,0.4-0.4+0.4*i)
end
attack=false
end
function attackone()
attack=true
hitted=false
CrystalEffect(prt7)
randomnumb=math.random(1,#Crystals)
item=Crystals[randomnumb]
item.CFrame=LeftArm.CFrame*cf(0,-5,0)
CrystalNumb=CrystalNumb-1
table.remove(Crystals,randomnumb)
for i=0,1,0.1 do
wait()
item.CFrame=LeftArm.CFrame*cf(0,-5,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.2,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0.8-0.8*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,-0.5-1.07*i,0.4+1.17*i)
end
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1)
Cryst=item.Crystal
con1=Cryst.Touched:connect(function(hit)
if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
so("http://www.roblox.com/asset/?id=12222005",Torso,1,1.5)
Cryst.Parent=nil
hitted=true
for i=1,math.random(4,8) do
local brokecryst=part(3,workspace,0.4,0,Cryst.BrickColor,"Crystal",vt(1,1,1))
local mshh=mesh("SpecialMesh",brokecryst,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(math.random()-math.random(),math.random()+math.random(0,1),math.random()-math.random()))
glow = Instance.new("PointLight")
glow.Parent = brokecryst
glow.Range = 4
glow.Brightness = 4.5
glow.Color = crystal.Color
brokecryst.CanCollide=true
brokecryst.CFrame=Cryst.CFrame*cf(math.random(-3,3),math.random(-3,3),math.random(-3,3))*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
brokecryst.Velocity=vt(math.random(-40,40),math.random(-40,40),math.random(-40,40))
game:GetService("Debris"):AddItem(brokecryst,4)
end
end
Damagefunc1(hit,10,20)
end)
for i=0,1,0.2 do
wait()
item.CFrame=LeftArm.CFrame*cf(0,-5,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.2,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,-0.2)
LW.C0=cf(-1.5+0.5*i, 0.5, -0.5*i) * euler(0,-3*i,0)
LW.C1=cf(0, 0.5, 0) * euler(0,-1.57,1.57)
end
wait(0.5)
con1:disconnect()
if hitted==true then
item.Parent=nil
elseif hitted==false then
CrystalNumb=CrystalNumb+1
table.insert(Crystals,item)
end
attack=false
end
function Shatter()
attack=true
Damage=0
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(0.2-0.4*i,0,0)
LW.C0=cf(-1.5+0.5*i, 0.5, -0.5*i) * euler(0.8+0.8*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,-0.5+0.5*i,0.4-1.6*i)
end
CrystalEffect(prt7)
for e=1,#Crystals do
Damage=Damage+5
so("http://www.roblox.com/asset/?id=12222005",Torso,1,1.5)
CrystalNumb=CrystalNumb-1
Crystals[e].Parent=nil
for i=1,math.random(4,10) do
local brokecryst=part(3,workspace,0.4,0,CrystalColor,"Crystal",vt(1,1,1))
local mshh=mesh("SpecialMesh",brokecryst,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(math.random()-math.random(),math.random()+math.random(0,1),math.random()-math.random()))
glow = Instance.new("PointLight")
glow.Parent = brokecryst
glow.Range = 4
glow.Brightness = 4.5
glow.Color = crystal.Color
brokecryst.CanCollide=true
brokecryst.CFrame=Crystals[e].CFrame*cf(math.random(-3,3),math.random(-3,3),math.random(-3,3))*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
brokecryst.Velocity=vt(math.random(-100,100),math.random(-100,100),math.random(-100,100))
game:GetService("Debris"):AddItem(brokecryst,4)
end
--table.remove(Crystals,c)
end
local cc = game.Workspace:GetChildren()
for i = 1, #cc do
local hum = cc[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = cc[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - Torso.Position
local mag = targ.magnitude
if mag <= 20 and cc[i].Name ~= Player.Name then
attackdebounce=false
Damagefunc2(head,Damage,10)
end
end
end
end
for i=1,10 do
print("nou")
for e=1,#Crystals do
print(#Crystals)
table.remove(Crystals,e)
end
end
wait(0.4)
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(-0.2+0.4*i,0,0)
LW.C0=cf(-1.5+0.5-0.5*i, 0.5, -0.5+0.5*i) * euler(1.6-0.8*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,-0.5*i,-1.2+1.6*i)
end
CrystalNumb=0
attack=false
end
function ShardJab()
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(0.2-0.4*i,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0.8+2.2*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,-0.5-1.07*i,0.4-0.4*i)
end
for i=1,3 do
randomnumb=math.random(1,#Crystals)
item=Crystals[randomnumb]
item.CFrame=Torso.CFrame*cf(math.random(-6,6),math.random(6,8),math.random(-6,6))
coroutine.resume(coroutine.create(function(Part)
CrystalNumb=CrystalNumb-1
table.remove(Crystals,randomnumb)
CrystalEffect(prt7)
wait(0.4)
so("http://www.roblox.com/asset/?id=12222005",Part,1,1.5)
Part.Crystal.Parent=nil
for i=1,math.random(2,6) do
local brokecryst=part(3,workspace,0.4,0,CrystalColor,"Crystal",vt(1,1,1))
local mshh=mesh("SpecialMesh",brokecryst,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(math.random()-math.random(),math.random()+math.random(0,1),math.random()-math.random()))
brokecryst.CanCollide=true
brokecryst.CFrame=Part.CFrame*cf(math.random(-3,3),math.random(-3,3),math.random(-3,3))*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
brokecryst.Velocity=vt(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(brokecryst,4)
end
for i=1,3 do
local Shard=part(3,workspace,0.4,0,CrystalColor,"Crystal",vt(1,1,1))
local mshh=mesh("SpecialMesh",Shard,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(0.5,1.5,0.5))
glow = Instance.new("PointLight")
glow.Parent = Shard
glow.Range = 9
glow.Brightness = 6
glow.Color = crystal.Color
fd=Instance.new("BodyPosition")
fd.P=10000
fd.D=1000
fd.maxForce=Vector3.new(math.huge,math.huge,math.huge)
fd.position=Part.Position+vt(math.random(-5,5),math.random(-5,5),math.random(-5,5))
fd.Parent=Shard
local bg = it("BodyGyro")
bg.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge
bg.P = 20e+003
bg.Parent=Shard
bg.cframe=CFrame.new(Shard.Position,MMouse.Hit.p)*euler(1.57,0,0)
--bg.cframe=CFrame.new(pos1,targetpos)
coroutine.resume(coroutine.create(function(Part)
wait(0.5)
shoottrail(MMouse,Part)
Part.Parent=nil
end),Shard)
end
end),item)
end
wait(1)
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(-0.2+0.4*i,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(3-2.2*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,-1.57+1.07*i,0.4*i)
end
item.Parent=nil
attack=false
end

function ShardWave()
attack=true
Humanoid.WalkSpeed=0
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(0.2-0.4*i,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0.8+0.77*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,-0.5+0.5*i,0.4-0.4*i)
end
MainCF=Torso.CFrame*cf(0,0,-5)
for i=1,10 do
wait(0.1)
MainCF=MainCF*cf(0,0,-2)
CrystalEffect(prt7)
local CrystDerp=part(3,workspace,0.4,0,CrystalColor,"Crystal",vt(1,1,1))
glow = Instance.new("PointLight")
glow.Parent = CrystDerp
glow.Range = 5
glow.Brightness = 4
glow.Color = crystal.Color
local mshh=mesh("SpecialMesh",CrystDerp,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(1+math.random(),math.random(1,2)+math.random(),1+math.random()))
CrystDerp.CFrame=MainCF*cf(math.random(-5,5),math.random(-20,-15),math.random(-5,5))
CrystDerp.Anchored=true
game:GetService("Debris"):AddItem(CrystDerp,4)
coroutine.resume(coroutine.create(function(Part)
for i=1,10 do
wait()
Part.CFrame=Part.CFrame*cf(0,2,0)
end
wait(1)
local cc = game.Workspace:GetChildren()
for i = 1, #cc do
local hum = cc[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = cc[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - Part.Position
local mag = targ.magnitude
if mag <= 5 and cc[i].Name ~= Player.Name then
attackdebounce=false
Damagefunc1(head,5,10)
end
end
end
end
so("http://www.roblox.com/asset/?id=12222005",Part,1,1.5)
for i=1,math.random(2,6) do
local brokecryst=part(3,workspace,0.4,0,CrystalColor,"Crystal",vt(1,1,1))
local mshh=mesh("SpecialMesh",brokecryst,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(math.random()-math.random(),math.random()+math.random(0,1),math.random()-math.random()))
brokecryst.CanCollide=true
brokecryst.CFrame=Part.CFrame*cf(math.random(-3,3),math.random(-3,3),math.random(-3,3))*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
brokecryst.Velocity=vt(math.random(-100,100),math.random(-100,100),math.random(-100,100))
game:GetService("Debris"):AddItem(brokecryst,4)
end
Part.Transparency=1
end),CrystDerp)
end
Humanoid.WalkSpeed=16
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(-0.2+0.4*i,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57-0.77*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,-0.5*i,0.4*i)
end
attack=false
end

function ShardBarrage()
attack=true
Humanoid.WalkSpeed=0
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(0.2-0.4*i,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0.8+0.77*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,-0.5+0.5*i,0.4-0.4*i)
end
MainCF=Torso.CFrame*cf(0,0,-5)
for i=1,35 do
wait(0.1)
MainCF=MainCF*cf(0,0,-2)
CrystalEffect(prt7)
local CrystDerp=part(3,workspace,0.4,0,CrystalColor,"Crystal",vt(1,1,1))
local CrystDerp1=part(3,workspace,0.4,0,CrystalColor,"Crystal1",vt(1,1,1))
local mshh=mesh("SpecialMesh",CrystDerp,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(1+math.random(5,5),math.random(7,9)+math.random(),1+math.random(5,5)))
local mshh1=mesh("SpecialMesh",CrystDerp1,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(1+math.random(5,5),math.random(7,9)+math.random(),1+math.random(5,5)))
CrystDerp.CFrame=MainCF*cf(math.random(-15,10),math.random(-25,-20),math.random(-30,15))
CrystDerp.Anchored=true
CrystDerp1.CFrame=MainCF*cf(math.random(-5,0),math.random(-20,-15),math.random(-10,10))
CrystDerp1.Anchored=true
game:GetService("Debris"):AddItem(CrystDerp,4)
game:GetService("Debris"):AddItem(CrystDerp1,4)
coroutine.resume(coroutine.create(function(Part)
for i=1,10 do
wait()
Part.CFrame=Part.CFrame*cf(0,2,0)
CrystDerp1.CFrame=CrystDerp1.CFrame*cf(0,2,0)
end
wait(1)
local cc = game.Workspace:GetChildren()
for i = 1, #cc do
local hum = cc[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = cc[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - Part.Position
local mag = targ.magnitude
if mag <= 5 and cc[i].Name ~= Player.Name then
attackdebounce=false
Damagefunc1(head,25,40)
end
end
end
end
local cc1 = game.Workspace:GetChildren()
for e = 1, #cc1 do
local hum1 = cc1[e]:findFirstChild("Humanoid")
if hum1 ~= nil and hum1.Health ~= 0 then
local head1 = cc1[e]:findFirstChild("Head")
if head1 ~= nil then
local targ1 = head1.Position - CrystDerp1.Position
local mag1 = targ1.magnitude
if mag1 <= 5 and cc1[e].Name ~= Player.Name then
attackdebounce=false
Damagefunc1(head1,25,40)
end
end
end
end
so("http://www.roblox.com/asset/?id=12222005",Part,1,1.5)
for i=1,math.random(2,6) do
local brokecryst=part(3,workspace,0.4,0,CrystalColor,"Crystal",vt(1,1,1))
local mshh=mesh("SpecialMesh",brokecryst,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(math.random()-math.random(),math.random()+math.random(0,1),math.random()-math.random()))
glow = Instance.new("PointLight")
glow.Parent = brokecryst
glow.Range = 4
glow.Brightness = 4
glow.Color = crystal.Color
brokecryst.CanCollide=true
brokecryst.CFrame=Part.CFrame*cf(math.random(-3,3),math.random(-3,3),math.random(-3,3))*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
brokecryst.Velocity=vt(math.random(-100,100),math.random(-100,100),math.random(-100,100))
local brokecryst1=part(3,workspace,0.4,0,CrystalColor,"Crystal",vt(1,1,1))
local mshh=mesh("SpecialMesh",brokecryst1,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(math.random()-math.random(),math.random()+math.random(0,1),math.random()-math.random()))
glow = Instance.new("PointLight")
glow.Parent = brokecryst1
glow.Range = 4
glow.Brightness = 4
glow.Color = crystal.Color
brokecryst1.CanCollide=true
brokecryst1.CFrame=CrystDerp1.CFrame*cf(math.random(-3,3),math.random(-3,3),math.random(-3,3))*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
brokecryst1.Velocity=vt(math.random(-100,100),math.random(-100,100),math.random(-100,100))
game:GetService("Debris"):AddItem(brokecryst,4)
game:GetService("Debris"):AddItem(brokecryst1,4)
end
Part.Transparency=1
CrystDerp1.Transparency=1
end),CrystDerp)
end
Humanoid.WalkSpeed=16
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(-0.2+0.4*i,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57-0.77*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,-0.5*i,0.4*i)
end
attack=false
end

function ob1d(mouse)
if attack == true or CrystalNumb==0 then return end
hold=true
attackone()
RW.C0=cf(1.5, 0.5, 0) * euler(0.2,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0.8,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,-0.5,0.4)
end
function ob1u(mouse)
hold = false
end
buttonhold = false
eul=0
function key(key)
if attack == true then return end
if key=="z" then
ShardWave()
end
if key=="b" then
ShardBarrage()
end
if key=="x" and CrystalNumb>=0 then
Shatter()
end
if key=="c" and CrystalNumb>=3 then
ShardJab()
end
if key=="v" then
crystalhold=true
MakeCrystals()
end
RW.C0=cf(1.5, 0.5, 0) * euler(0.2,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0.8,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,-0.5,0.4)
end
function key2(key)
if key=="v" then
crystalhold=false
end
end
function s(mouse)
mouse.Button1Down:connect(function() ob1d(mouse) end)
mouse.Button1Up:connect(function() ob1u(mouse) end)
mouse.KeyDown:connect(key)
mouse.KeyUp:connect(key2)
unsheathed = true
player = Player
ch = Character
MMouse = mouse
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
--_G.R = RW
-- 
LW.Part0 = ch.Torso
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)
LW.C1 = CFrame.new(0, 0.5, 0)
LW.Part1 = ch["Left Arm"]
LW.Parent = ch.Torso
--_G.L = LW
--
equipanim()
end
function ds(mouse)
hideanim()
wait(0)
RW.Parent = nil
LW.Parent = nil
RSH.Parent = player.Character.Torso
LSH.Parent = player.Character.Torso
end
Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
print("Crystal Gauntlet loaded.")
print(#Crystals)
numbb=0
datnumb=0
while true do
wait()
datnumb=0
BaseNumb=6.28
BaseNumb=BaseNumb/CrystalNumb
for d=1,#Crystals do
datnumb=datnumb+BaseNumb
local Crystal=Crystals[d]
if Crystal.className=="Part" then
coroutine.resume(coroutine.create(function(Part)
if #Crystals~=0 then
Part.CFrame=CFrame.new(Torso.Position)*euler(0,1+datnumb,0)*cf(0,0,5+(CrystalNumb/3))
numbb=numbb+0.05
--print(BaseNumb)
end
end),Crystal)
end
end
end
-- mediafire
--[[
Copyrighted (C) Fenrier 2013
]]