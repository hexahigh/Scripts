Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui 
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=1
pathtrans=.7
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
cloak=false
lightcolor='Bright blue'

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 

function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp=it("Part")
fp.formFactor=formfactor 
fp.Parent=parent
fp.Reflectance=reflectance
fp.Transparency=transparency
fp.CanCollide=false 
fp.Locked=true
fp.BrickColor=brickcolor
fp.Name=name
fp.Size=size
fp.Position=Torso.Position 
NoOutline(fp)
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh=it(Mesh) 
mesh.Parent=part
if Mesh=="SpecialMesh" then
mesh.MeshType=meshtype
if meshid~="nil" then
mesh.MeshId="http://www.roblox.com/asset/?id="..meshid
end
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
 
function weld(parent,part0,part1,c0)
local weld=it("Weld") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end
 
local Color1=Torso.BrickColor

local bodvel=Instance.new("BodyVelocity")
local bg=Instance.new("BodyGyro")

function swait(num)
if num==0 or num==nil then
game:service'RunService'.Stepped:wait(0)
else
for i=0,num do
game:service'RunService'.Stepped:wait(0)
end
end
end
 
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
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
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

function SkullEffect(brickcolor,cframe,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=4770583",vt(0,0,0),vt(x1,y1,z1))
--http://www.roblox.com/asset/?id=4770560
game:GetService("Debris"):AddItem(prt,2)
CF=prt.CFrame
coroutine.resume(coroutine.create(function(Part,Mesh,TehCF) 
for i=0,1,0.2 do
wait()
Part.CFrame=CF*cf(0,0,-0.4)
end
for i=0,1,delay do
wait()
--Part.CFrame=CF*cf((math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5)
Mesh.Scale=Mesh.Scale
end
for i=0,1,0.1 do
wait()
Part.Transparency=i
end
Part.Parent=nil
end),prt,msh,CF)
end
 
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicBlock2(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,cframe)
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
wait()
Weld.C0=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cframe
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end
 
function MagicBlock3(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,euler(0,0,0)*cf(0,0,0))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
wait()
Weld.C0=euler(i*20,0,0)
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end
 
function MagicCircle2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
local prt2=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt2.Anchored=true
prt2.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2=mesh("SpecialMesh",prt2,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
game:GetService("Debris"):AddItem(prt2,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.CFrame=Part.CFrame*cf(0,0.5,0)
end
Part.Parent=nil
end),prt2,msh2)
end
for i=0,1,delay*2 do
wait()
Part.CFrame=Part.CFrame
Mesh.Scale=vt((x1+x3)-(x1+x3)*i,(y1+y3)-(y1+y3)*i,(z1+z3)-(z1+z3)*i)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicRing(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(x2,y2,z2)
--"http://www.roblox.com/asset/?id=168892465"
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.03 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
CF=Part.CFrame
Numbb=0
randnumb=math.random()/10
rand1=math.random()/10
for i=0,1,rand1 do
wait()
CF=CF*cf(0,math.random()/2,0)
--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
Part.CFrame=CF*euler(Numbb,0,0)
Part.Transparency=i
Numbb=Numbb+randnumb
end
Part.Parent=nil
end),prt,CF,Numbb,randnumb)
end
 
function MagicWaveThing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1051557",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(0,0.7,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function WaveEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*cf(0,y3/2,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function StravEffect(brickcolor,cframe,x,y,z,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x,y,z)
msh=mesh("SpecialMesh",prt,"FileMesh","rbxassetid://168892363",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,ex,why,zee) 
local num=math.random()
local num2=math.random(-3,2)+math.random()
local numm=0
for i=0,1,delay*2 do
swait()
Part.CFrame=cframe*euler(0,numm*num*10,0)*cf(ex,why,zee)*cf(-i*10,num2,0)
Part.Transparency=i
numm=numm+0.01
end
Part.Parent=nil
Mesh.Parent=nil
end),prt,msh,x,y,z)
end

function dmgstart(dmg,what)
	hitcon = what.Touched:connect(function(hit)
		local hum = hit.Parent:FindFirstChild("Humanoid")
		if hum and not hum:IsDescendantOf(Character) then
			hum:TakeDamage(dmg)
		end
	end)
end

function dmgstop()
	hitcon:disconnect()
end

user=game.Players.localPlayer
	char=user.Character
	mouse=user:GetMouse()
	m=Instance.new('Model',char)		
		
	blocks = {}
	function Part(Type, Parent, Name, Transparency, Reflectance, Size, CFrame, Material, BrickColor3)
		prt 				= Instance.new(Type,Parent)
		prt.Name 			= Name
		prt.FormFactor		= "Custom"
		prt.Transparency 	= Transparency
		prt.Reflectance 	= Reflectance
		prt.Size 			= Size
		prt.CFrame 			= CFrame
		prt.Material 		= Material
		prt.TopSurface 		= 'SmoothNoOutlines'
		prt.BottomSurface 	= 'SmoothNoOutlines'
		prt.LeftSurface 	= 'SmoothNoOutlines'
		prt.RightSurface 	= 'SmoothNoOutlines'
		prt.FrontSurface 	= 'SmoothNoOutlines'
		prt.BackSurface  	= 'SmoothNoOutlines'
		prt.BrickColor 		= BrickColor.new(tostring(BrickColor3))
		prt.Anchored 		= false
		prt.CanCollide 		= false
		table.insert(blocks, prt)
		return #blocks
	end
	
	function weldBetween(a, b)
	    weld = Instance.new("ManualWeld")
	    weld.Part0 = a
	    weld.Part1 = b
	    weld.C0 = CFrame.new()
	    weld.C1 = b.CFrame:inverse() * a.CFrame
	    weld.Parent = a
	    return weld;
	end

	local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Toothpaste")
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new("Toothpaste")
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
 
function NoOutline(Part)
        Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
	
local Handle  = Instance.new("Part", m)
			Handle:BreakJoints()
			Handle.TopSurface = "Smooth"
			Handle.Material = "SmoothPlastic"
			Handle.Name = 'Handle'
			Handle.Transparency = '0'
			Handle.BottomSurface = "Smooth"
			Handle.FormFactor = "Custom" Handle.CanCollide = false
			Handle.BrickColor = BrickColor.new("Really black")
			Handle.Size = Vector3.new(0.347999871, 0.696000099, 0.232000008)
			    local Handleweld = Instance.new("ManualWeld")
   Handleweld.Part0 = Character["Right Arm"]
   Handleweld.Part1 = Handle  Handleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Handleweld.C1 = CFrame.new(0.987845421, -0.306541443, -0.0906600952, -1.08667452e-020, 0.999992371, -2.05761918e-011, 1.13746401e-010, -2.04624998e-011, -1, -0.99999249, -9.1779009e-021, -1.14058374e-010)
    Handleweld.Parent = Character["Right Arm"]
		
					local HandleMesh = Instance.new("CylinderMesh",Handle)
				HandleMesh.Name = "Mesh"
				HandleMesh.Offset = Vector3.new(0, 0, 0)
				HandleMesh.Scale = Vector3.new(1, 1, 1)
				
local EnergyBlade  = Instance.new("Part", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.30000001192093'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.347999871, 2.204, 0.200000003)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.115883589, -2.02999496, -0.0057220459, 0.999984741, -2.81582917e-012, -7.16509824e-021, 3.0434856e-012, 1, -1.32355987e-010, 1.59434039e-020, 1.32983319e-010, 0.99998498)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("BlockMesh",EnergyBlade)
				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(1, 1, 0.579999983)
				
local EnergyBlade  = Instance.new("Part", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.463999867, 0.232000053, 0.200000003)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.637008905, -2.55199051, -0.00542831421, 0.999984741, -3.22502476e-011, 1.42107378e-014, 3.24776907e-011, 1, 4.27509764e-011, -7.10536002e-015, -4.21135973e-011, 0.99998498)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("BlockMesh",EnergyBlade)
				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(1, 1, 0.579999983)
				
local EnergyBlade  = Instance.new("Part", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Cyan")
			EnergyBlade.Size = Vector3.new(0.347999871, 2.204, 0.200000003)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(0.232154608, -2.02999496, -0.00569915771, 0.999984741, -3.41856231e-012, -7.23384551e-021, 3.6462118e-012, 1, -8.98658647e-011, 1.50691127e-020, 9.04928563e-011, 0.99998498)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("BlockMesh",EnergyBlade)
				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(1, 1, 0.579999983)
				
local EnergyBlade  = Instance.new("Part", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.231999859, 0.232000053, 0.200000003)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.405785561, -3.01598358, -0.00569915771, 0.999984741, -6.75242154e-012, 4.26322389e-014, 6.98006149e-012, 1, -1.3368967e-010, -3.55268454e-014, 1.34328382e-010, 0.99998498)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("BlockMesh",EnergyBlade)
				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(1, 1, 0.579999983)
				
local EnergyBlade  = Instance.new("Part", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.231999859, 0.232000053, 0.200000003)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.405785561, -2.08798981, -0.00569915771, 0.999984741, -5.92108654e-012, 4.26322389e-014, 6.14873343e-012, 1, -1.31955946e-010, -3.55268488e-014, 1.32594657e-010, 0.99998498)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("BlockMesh",EnergyBlade)
				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(1, 1, 0.579999983)
				
local EnergyBlade  = Instance.new("Part", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Cyan")
			EnergyBlade.Size = Vector3.new(0.463999867, 0.580000103, 0.200000003)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.0576572418, -3.42163086, -0.00572967529, 0.999984741, -3.41856231e-012, -7.23384551e-021, 3.6462118e-012, 1, -8.98658647e-011, 1.50691127e-020, 9.04928563e-011, 0.99998498)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("BlockMesh",EnergyBlade)
				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(1, 1, 0.579999983)
				
local Hitbox  = Instance.new("Part", m)
			Hitbox:BreakJoints()
			Hitbox.TopSurface = "Smooth"
			Hitbox.Material = "SmoothPlastic"
			Hitbox.Transparency = '1'
			Hitbox.Name = 'Hitbox'
			Hitbox.BottomSurface = "Smooth"
			Hitbox.FormFactor = "Custom" Hitbox.CanCollide = false
			Hitbox.BrickColor = BrickColor.new("Toothpaste")
			Hitbox.Size = Vector3.new(1.39199984, 2.78399992, 0.200000003)
			    local Hitboxweld = Instance.new("ManualWeld")
   Hitboxweld.Part0 =  Handle   Hitboxweld.Part1 = Hitbox  Hitboxweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Hitboxweld.C1 = CFrame.new(-0.173881292, -2.78398895, -0.0057220459, 0.999984741, -2.81582917e-012, -7.16509824e-021, 3.0434856e-012, 1, -1.32355987e-010, 1.59434039e-020, 1.32983319e-010, 0.99998498)
    Hitboxweld.Parent = Hitbox		
					local HitboxMesh = Instance.new("BlockMesh",Hitbox)
				HitboxMesh.Name = "Mesh"
				HitboxMesh.Offset = Vector3.new(0, 0, 0)
				HitboxMesh.Scale = Vector3.new(1, 1, 0.579999983)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0.5'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.347999871, 0.232000083, 0.463999987)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000555276871, 1.27599716, 0.000175476074, 0.999984741, -9.42173162e-012, 6.34746155e-020, 9.64937852e-012, 1, 7.94176322e-011, -5.70437063e-020, -7.87930068e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.347999871, 0.348000079, 0.232000008)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000479221344, 0.521999359, 0.000118255615, 0.999984741, 1.34131739e-007, -2.7346955e-018, -1.34129465e-007, 1, 7.85025447e-011, 1.32724314e-017, -7.78780651e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.200000003, 0.580000043, 0.232000008)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.465114594, 0.048664093, -0.00578308105, 0.583923936, 0.811801791, 5.05349096e-011, -0.811789036, 0.583932638, 6.63551367e-011, 2.43582585e-011, -7.91467031e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.347999871, 0.348000079, 0.232000008)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000507593155, 0.869998932, 0.00012588501, 0.999984503, 1.34133558e-007, -2.68759253e-018, -1.34131255e-007, 1, 8.30204516e-011, 1.38314673e-017, -8.23960414e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.347999871, 0.348000079, 0.232000008)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-4.72068787e-005, -0.521999359, -1.52587891e-005, 0.999984741, 1.02261602e-012, -5.88345014e-021, -7.94905808e-013, 1, -1.77614451e-011, 1.39408044e-020, 1.8387368e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.200000003, 0.811999977, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.464137435, -1.33398819, -0.00573730469, 0.999984741, 4.12598775e-012, -6.37332645e-021, -3.89826366e-012, 1, -1.18157345e-010, 7.10538797e-015, 1.18781679e-010, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.34799999, 0.34799999, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000649213791, 1.37459946, 0.000183105469, 0.999984741, -5.89520099e-012, -2.52691724e-018, 6.1229008e-012, 1, 8.39504716e-011, 2.53063356e-018, -8.33259087e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Sphere				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.464072108, 0.243598938, -0.00573730469, 0.999984741, -1.23941309e-011, -1.74296799e-018, 1.26217274e-011, 1, 9.18617266e-011, 1.74603993e-018, -9.12373926e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Sphere				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.579999983, 0.579999983, 0.579999983)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(1.04399991, 0.200000003, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(7.74860382e-005, -0.869998932, -0.00573348999, 0.999984503, -1.97238059e-015, -2.50205131e-021, 2.29675653e-013, 1, -8.74495337e-011, 1.05936116e-020, 8.80765114e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.580000103, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.232000008, 0.232000083, 0.232000008)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.00512361526, 1.27599716, 0.000205993652, 0.999984741, -1.28453255e-011, -2.6103748e-018, 1.30729186e-011, 1, 9.06156192e-011, 2.61342048e-018, -8.99911604e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Sphere				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.200000003, 1.04400003, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.463974833, -0.290000916, -0.00576782227, 0.999984503, 2.97894065e-008, -2.86348202e-011, -2.97887173e-008, 1, 1.01521291e-010, 2.86348098e-011, -1.00897159e-010, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.347999871, 0.200000003, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.000164270401, -0.753997803, -3.81469727e-005, 0.999984503, 3.06888716e-012, -1.38834606e-017, -2.8411544e-012, 1, -1.97783734e-011, 1.38918019e-017, 2.04043379e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.579999983, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.811999977, 0.463999987, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.116131306, -1.15999222, -0.00574874878, 0.999984741, 3.94835206e-012, -6.39358713e-021, -3.72062797e-012, 1, -1.16199814e-010, 7.10538797e-015, 1.16820581e-010, 0.99998498)
    Partweld.Parent = Part		
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.34799999, 0.34799999, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000649213791, 1.14260101, 0.000183105469, 0.999984741, -5.89520099e-012, -2.52691724e-018, 6.1229008e-012, 1, 8.39504716e-011, 2.53063356e-018, -8.33259087e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Sphere				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.232000098, 0.232000053)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.00545501709, -2.78398895, 0.752885342, 1.0430734e-007, 9.23484151e-008, 0.99998498, -4.76255479e-008, 1, -9.2346383e-008, -0.999984741, -4.7626493e-008, 1.04307368e-007)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Cyan")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.580000043, 0.34800005)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(0.00572967529, -3.42163086, 0.348280907, 3.85203647e-010, -3.42899966e-007, -0.99998498, -5.29177049e-012, 1, -3.42894168e-007, 0.999984741, 5.5196854e-012, 3.85203758e-010)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Cyan")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.464000076, 0.464000016)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(0.00566864014, -3.94353485, -0.0578434467, 3.85203536e-010, -3.42944759e-007, -0.99998498, 1.11812989e-012, 1, -3.42938961e-007, 0.999984741, -8.90444023e-013, 3.85210752e-010)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Cyan")
			EnergyBlade.Size = Vector3.new(0.200000003, 2.204, 0.200000003)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.0057144165, 2.02999496, 0.464220524, 1.38043432e-009, 3.13060639e-007, 0.99998498, -3.24347216e-010, -1, 3.13055295e-007, 0.999984741, -3.24124921e-010, -1.38043454e-009)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 0.579999983)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.232000098, 0.232000053)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.00545501709, 2.31999969, -0.520918846, 3.8519643e-010, 2.97935088e-007, 0.99998498, -3.43321933e-011, -1, 2.97929887e-007, 0.999984741, -3.41047642e-011, -3.85189436e-010)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.232000098, 0.232000053)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(0.00545501709, 2.31999969, 0.752884865, 1.04307404e-007, -1.48921103e-007, -0.99998498, -4.7686104e-008, -1, 1.48918247e-007, -0.999984741, 4.76865942e-008, -1.04307446e-007)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.232000098, 0.232000053)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(0.00545501709, -2.78398895, -0.52090168, 3.85210641e-010, -3.42831441e-007, -0.99998498, 2.68004976e-011, 1, -3.42825587e-007, 0.999984741, -2.65730112e-011, 3.85189436e-010)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.232000098, 0.232000053)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(0.00572967529, 2.78398895, 0.405653715, 1.04307418e-007, -1.49098511e-007, -0.99998498, -4.76609436e-008, -1, 1.49095641e-007, -0.999984741, 4.76614339e-008, -1.0430746e-007)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.232000098, 0.232000053)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.00572967529, -2.31999969, 0.405654192, 1.04307325e-007, 9.2525454e-008, 0.99998498, -4.76508113e-008, 1, -9.25234218e-008, -0.999984741, -4.76517563e-008, 1.04307354e-007)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.232000098, 0.232000053)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.00572967529, -3.24771881, 0.405654192, 1.04307325e-007, 9.25271877e-008, 0.99998498, -4.764998e-008, 1, -9.25251555e-008, -0.999984741, -4.7650925e-008, 1.04307354e-007)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local Wedge  = Instance.new("WedgePart", m)
			Wedge:BreakJoints()
			Wedge.TopSurface = "Smooth"
			Wedge.Material = "SmoothPlastic"
			Wedge.Transparency = '0'
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.347999871, 0.463999987, 0.232000008)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-0.00574874878, -1.15999222, 0.4057827, 5.96037637e-008, 4.00195148e-008, 0.99998498, 3.54902951e-008, 1, -4.00182927e-008, -0.999984741, 3.54906078e-008, 5.96037779e-008)
    Wedgeweld.Parent = Wedge		
local Wedge  = Instance.new("WedgePart", m)
			Wedge:BreakJoints()
			Wedge.TopSurface = "Smooth"
			Wedge.Material = "SmoothPlastic"
			Wedge.Transparency = '0'
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.347999871, 0.812000036, 0.580000043)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-0.00572967529, -1.33398819, -0.116147518, 5.96037637e-008, 4.00212343e-008, 0.99998498, 3.54923806e-008, 1, -4.00200122e-008, -0.999984741, 3.54926932e-008, 5.96037779e-008)
    Wedgeweld.Parent = Wedge		
local Wedge  = Instance.new("WedgePart", m)
			Wedge:BreakJoints()
			Wedge.TopSurface = "Smooth"
			Wedge.Material = "SmoothPlastic"
			Wedge.Transparency = '0.5'
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Toothpaste")
			Wedge.Size = Vector3.new(0.200000003, 0.232000098, 0.232000053)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(0.00572967529, 1.85600281, 0.405664921, 1.04307418e-007, -1.49096778e-007, -0.99998498, -4.76601052e-008, -1, 1.49093907e-007, -0.999984741, 4.76605955e-008, -1.0430746e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.579999983, 1, 1)

function Cloak()
Face.Parent=nil
cloaked=true
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" and v.Name~="HumanoidRootPart" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.2 do
                wait()
                v.Transparency=i
                end
                v.Transparency=1
                end))
                end
                if v.className=="Hat" then
                hatp=v.Handle
                coroutine.resume(coroutine.create(function(derp) 
                for i=0,1,0.2 do
                wait()
                derp.Transparency=i
                end
                derp.Transparency=1
                end),hatp)
                end
        end
        for _,v in pairs(blocks) do
                if v.className=="Part" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.2 do
                wait()
                v.Transparency=i
                end
                v.Transparency=1
                end))
                end
        end
end

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,.5,BrickColor.new("Navy blue"))
                else
                h.Health=h.Health-(Damage/2)
                showDamage(hit.Parent,Damage/2,.5,BrickColor.new("Bright blue"))
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
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
 
showDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.BrickColor=Color
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
        if Char:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
        end
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
 
function UnCloak()
so("http://roblox.com/asset/?id=2767090",Torso,1,1.1) 
Face.Parent=Head 
cloaked=false
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" and v.Name~="HumanoidRootPart" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.1 do
                wait()
                v.Transparency=v.Transparency-0.1
                end
                v.Transparency=0
                end))
                end
                if v.className=="Hat" then
                hatp=v.Handle
                coroutine.resume(coroutine.create(function(derp) 
                for i=0,1,0.1 do
                wait()
                derp.Transparency=derp.Transparency-0.1
                end
                derp.Transparency=0
                end),hatp)
                end
        end
        for _,v in pairs(blocks) do
                if v.className=="Part" and v.Name~="Hitbox" and v.Name~='tip' then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.1 do
                wait()
                v.Transparency=v.Transparency-0.1
                end
                v.Transparency=0
                end))
                v.Transparency=0
                end
        end
end
meshids = {["penguin"] = 15853464, ["ring"] = 3270017,
["spike"] = 1033714,["cone"] = 1082802,["crown"] = 20329976,["crossbow"] = 15886761,
["cloud"] = 1095708,["mjolnir"] = 1279013,["diamond"] = 9756362, ["hand"] = 37241605,
["fist"] = 65322375,["skull"] = 36869983,["totem"] = 35624068,["spikeb"] = 9982590,["dragon"] = 58430372,["fish"] = 31221717, ["coffee"] = 15929962,["spiral"] = 1051557,
["ramen"] = 19380188,["lightning"] = 72583597,["bullet"]=2697549}---some meshids
textureids = {["cone"] = 1082804,["rainbow"] = 28488599,["fish"] = 31221733, ["coffee"] = 24181455,["monster"] = 33366441,["ramen"] = 19380153}
soundids = {["bell"] = 20005706,["flintlock"] = 13510352,["falcon"] = 1387390,['sensa'] = 4700455,
['midas'] = 17385513;
['spark'] = 10756118;
['boom'] = 10730819;
['plank'] = 10548112;
['harmonica1'] = 33069371;
['harmonica2'] = 33069412;
['thump'] = 10730819;
}
 
cfn,ang,v3n,ud2n,V2 = CFrame.new,CFrame.Angles,Vector3.new,UDim2.new,Vector2.new
 
M = {["R"] = function(a,b) return math.random(a,b) end,
["Cos"] = function(a) return math.cos(a) end,
["Sin"] = function(a) return math.sin(a) end,
["D"] = function(a) return math.rad(a) end
}
 
T = {["P"] = function(x,y,z,color,transparency,cancollide,anchored,parent,typee)
if typee == 'wedge' then
c = Instance.new("WedgePart",m)
elseif typee == 'seat' then
c = Instance.new("Seat",m)
elseif typee == 'vseat' then
c = Instance.new("VehicleSeat",m)
else
c = Instance.new("Part",m)
end
c.TopSurface,c.BottomSurface = 0,0
c.Locked = true
c.formFactor = "Custom"
c.Size = Vector3.new(x,y,z)
if color ~= "random" then
c.BrickColor = BrickColor.new(color)
else c.BrickColor = BrickColor:random()
end
c.Transparency = transparency
c.CanCollide = cancollide
if anchored ~= nil then c.Anchored = anchored end
if parent ~= nil then c.Parent = parent end
return c
end
,
["C"] = function(func) coroutine.resume(coroutine.create(func)) end
,
["W"] = function(part0,part1,x,y,z,rx,ry,rz,parent)
w = Instance.new("Motor",m)
if parent ~= nil then w.Parent = parent end
w.Part0,w.Part1 = part0,part1
w.C1 = CFrame.new(x,y,z) * CFrame.Angles(rx,ry,rz)
return w
end
,
["BG"] = function(parent)
local c = Instance.new("BodyGyro",parent)
c.P = 20e+003
c.cframe = parent.CFrame
c.maxTorque = Vector3.new(c.P,c.P,c.P)
return c
end
,
["BP"] = function(parent,position)
local bp = Instance.new("BodyPosition",parent)
bp.maxForce = Vector3.new()*math.huge
bp.position = position
return bp
end
,
["F"] = function(parent,size,heat,color,secondcolor,enabled)
f = Instance.new("Fire",parent)
f.Size = size
f.Heat = heat
if enabled ~= nil then f.Enabled = enabled end
if color ~= nil then f.Color = BrickColor.new(color).Color end
if secondcolor ~= nil then f.SecondaryColor = BrickColor.new(secondcolor).Color end
return f
end
,
["FM"] = function(parent,meshid,x,y,z,meshtexture)
if meshid == "cylinder" then
mesh = Instance.new("CylinderMesh",parent)
mesh.Scale = Vector3.new(x,y,z)
return mesh
elseif meshid == 'block' then
mesh = Instance.new("BlockMesh",parent)
mesh.Scale = Vector3.new(x,y,z)
return mesh
end
mesh = Instance.new("SpecialMesh",parent)
if meshid == 'wedge' then
mesh.MeshType = 'Wedge'
elseif meshid == 'sphere' then
mesh.MeshType = 3
elseif type(meshid) == "number" then
mesh.MeshId = "rbxassetid://"..meshid
else
mesh.MeshId = "rbxassetid://"..meshids[meshid]
end
mesh.Scale = Vector3.new(x,y,z)
if meshtexture then
if type(meshtexture) == "number" then mesh.TextureId = "rbxassetid://"..meshtexture else
mesh.TextureId = "rbxassetid://"..textureids[meshtexture] end
end
return mesh
end,
["Dec"] = function(parent,face,id,transparency)
c = Instance.new("Decal",parent)
c.Face = face
c.Texture = id
if transparency then c.Transparency = transparency end
return c
end,
["S"] = function(id,pitch,volume,parent)
cur = nil
found = false
if type(id) == 'string' then
for i,v in pairs(char.Head:children()) do
if v:IsA("Sound") and v.Name == id and not found then
cur = v
if parent then cur = v:Clone() cur.Parent = parent end
cur.Pitch = pitch
if volume then cur.Volume = volume end
cur:Play()
found = true
return cur
end
end
elseif type(id) == 'number' then
local a = char.Head:FindFirstChild('exteo')
a.SoundId = 'rbxassetid://'..id
a.Pitch = pitch
if volume then a.Volume = volume end
a:Play()
return a
end
end
}
 
function damage(hit,amount,delay)
for i,v in pairs(hit:children()) do
if v:IsA("Humanoid") and v.Parent ~= char then
if delay then
local found = v:FindFirstChild('tag')
if not found then
local a = Instance.new("StringValue",v)
a.Name = 'tag ur it'
game:service'Debris':AddItem(a,delay)
v.Health = v.Health - amount
end
else v.Health = v.Health - amount
end
end
end
end
 
function lightning(startpos,endpos,times,offse,livetime,col,dmg)
local curpos = startpos
for i = 1,times do
local mag = (startpos-endpos).magnitude
local offs = {-offse,offse}
local offset = v3n(offs[M.R(1,2)],offs[M.R(1,2)],offs[M.R(1,2)])
laz = T.P(.1,.1,mag/times,col,0,false,true,m)
laz.Parent=m
laz.Transparency=.5
if dmg then laz.Touched:connect(function(hit) dmgstart(laz,5) end) end
local apos = (cfn(curpos,endpos)*cfn(0,0,-mag/times)).p+offset
if times == i then
local mag2 = (curpos-endpos).magnitude
laz.Size = v3n(.1,.1,mag2)
laz.CFrame = cfn(curpos,endpos)*cfn(0,0,-mag2/2)
else
laz.CFrame = cfn(curpos,apos)*cfn(0,0,-mag/times/2)
end
curpos = laz.CFrame*cfn(0,0,-mag/times/2).p game:service'Debris':AddItem(laz,livetime)
pcall(function()
dmgstop()
end)
end
end

mouse.Button1Down:connect(function()
	if attack==false then
		if attacktype==1 then
			attack=true
			attacktype=2
			attackone()
		elseif attacktype==2 then
			attack=true
			attacktype=3
			attacktwo()
		elseif attacktype==3 then
			attack=true
			attacktype=1
			attackthree()
		end
	end
end)

mouse.KeyDown:connect(function(k)
	k=k:lower()
	if k=='q' then
		if attack==false then
			Bash()
		end
		elseif k=='e' then
		if attack==false then
			Impulse()
	end
	end
end)
function Impulse()
attack=true
Humanoid.Jump=true
for i=0,1,0.2 do
swait()
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.45)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0.5,0),.45)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.5,-1.5,0)*euler(.5,0,0),.45)
LW.C0=clerp(LW.C0,cf(0,0.5,-0.7)*euler(1.5,-1.5,0)*euler(.7,0,0),.45)
RH.C0=clerp(RH.C0,RHC0*euler(-.2,0,0),.45)
LH.C0=clerp(LH.C0,LHC0*euler(-.2,0,0),.45)
end
blcf=nil
scfr=nil
so("http://roblox.com/asset/?id=231917801",Hitbox,1,1) 
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i=1,2 do
for i=0,1,0.1 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.5,-1.5,0)*euler(-.5,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1.5,-1.5,0)*euler(.5,0,0),.3)
RootJoint.C0=RootCF*euler(0,0.5,6.6*i)
end
end
attack = false
con1:disconnect()
end

function Bash()
attack=true
for i=0,1,0.1 do
swait()
--wld1.C0=clerp(wld1.C0,euler(1.1,0,0)*cf(0,1,-0.4),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,1)*euler(0.5,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1.4),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.4,-1.4,0)*euler(-.6,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1,-1,0)*euler(.5,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,2.5,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1,0),.3)
end
Torso.Velocity=RootPart.CFrame.lookVector*200
so("http://roblox.com/asset/?id=200632211",Torso,1,.8) 
hit=nil
for i=1,20 do
if hit==nil then
swait()
end
end
Torso.Velocity=RootPart.CFrame.lookVector*0
Humanoid.WalkSpeed=0
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i=0,1,0.1 do
swait()
--wld1.C0=clerp(wld1.C0,euler(1.1,0,0)*cf(0,1,-0.4),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,1.4)*euler(-0.2,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1.4),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(3,-1.4,0)*euler(-.6,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(2.3,-1.4,0)*euler(.5,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0),.3)
end
so("http://roblox.com/asset/?id=200632136",Hitbox,1,0.9) 
blcf=nil
scfr=nil
for i=0,1,0.2 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
--wld1.C0=clerp(wld1.C0,euler(2.2,0,0)*cf(0,.8,-0.3),.45)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,1.4)*euler(0.4,0,0),.45)
--RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.3)*euler(0,0,-1.4),.45)
RW.C0=clerp(RW.C0,cf(.5,0.2,-0.5)*euler(3,-1.4,0)*euler(-2.7,0,0),.45)
LW.C0=clerp(LW.C0,cf(-1.2,0.1,-0.3)*euler(0,-1.4,0)*euler(.5,0,0),.45)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0),.3)
end
swait(50)
Humanoid.WalkSpeed=16
con1:disconnect()
attack=false
end


function attackone()
    attack=true
    for i=0,1,0.2 do
            swait()
            Neck.C0=clerp(Neck.C0,necko*euler(.2,0,.5),.4)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.4)
            RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(2,0,1),.4)
            RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
            LW.C0=clerp(LW.C0,cf(-1.3,0.5,-.3)*euler(.4,0,.2)*euler(0,-.2,0),.4)
            LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
            RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.4)
            LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.4)
    end
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,20,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
    for i=0,1,0.3 do
            swait()
			local blcf = Hitbox.CFrame
			if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
			local h = 5
			local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
			if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
			local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
			if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
			scfr = blcf
			elseif not scfr then
			scfr = blcf
			end
            Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5)*euler(.2,0,0),.4)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.5),.4)
            RW.C0=clerp(RW.C0,cf(1.2,0.5,-.3)*euler(.2,0,-.2)*euler(0,-.5,0),.4)
            RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
            LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.2),.4)
            LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
            RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.4)
            LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.4)
    end
so("http://roblox.com/asset/?id=233856140",Hitbox,1,1) 
    for i=0,1,0.2 do
            swait()
local blcf = Hitbox.CFrame
			if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
			local h = 5
			local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
			if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
			local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
			if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
			scfr = blcf
			elseif not scfr then
			scfr = blcf
			end
            Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5)*euler(.2,0,0),.4)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.5),.4)
            RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(.6,0,-1)*euler(0,-.7,0),.4)
            RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
            LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.2),.4)
            LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
            RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.4)
            LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.4)
    end
    attack=false
con1:disconnect()
end	

function attacktwo()
	attack=true
	for i=0,1,0.1 do
		swait()
		local blcf = Hitbox.CFrame
		if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
		local h = 5
		local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
		if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
		local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
		if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
		scfr = blcf
		elseif not scfr then
		scfr = blcf
		end
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.1,0,-1.2),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,1.2),.3)
		RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(.5,1.8,1.5),.3)
		LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1.5,-0.5,.8),.3)
		RH.C0=clerp(RH.C0,RHC0*euler(-.2,0,0),.3)
		LH.C0=clerp(LH.C0,LHC0*euler(-.2,0,0),.3)
	end
	so("http://roblox.com/asset/?id=233856146",Hitbox,1,1) 
			con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,20,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
	for i=0,1,0.1 do
		swait()
		local blcf = Hitbox.CFrame
			if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
			local h = 5
			local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
			if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
			local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
			if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
			scfr = blcf
			elseif not scfr then
			scfr = blcf
			end
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.1,0,1),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1),.3)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.2,1.2,0)*euler(-1.5,0,0),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(.2,-.2,-1.4),.3)
	end
	attack=false
	con1:disconnect()
end
 
function attackthree()
    attack=true
    for i=0,1,0.2 do
            swait()
            Neck.C0=clerp(Neck.C0,necko*euler(0,0,.2),.4)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.3),.4)
            RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1,0,1.2)*euler(0,-2,0),.4)
            RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
            LW.C0=clerp(LW.C0,cf(-1.4,0.5,-.2)*euler(.7,0,.1)*euler(0,-.4,0),.4)
            LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
            RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.3,0),.4)
            LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.3,0),.4)
    end
so("http://roblox.com/asset/?id=233856140",Hitbox,1,0.9)
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,20,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
    for i=0,1,0.1 do
            swait()
			local blcf = Hitbox.CFrame
			if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
			local h = 5
			local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
			if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
			local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
			if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
			scfr = blcf
			elseif not scfr then
			scfr = blcf
			end
            Neck.C0=clerp(Neck.C0,necko*euler(.2,0,-.6),.35)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.6),.35)
            RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.2,0,-1.2)*euler(0,-1.2,0),.35)
            RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
            LW.C0=clerp(LW.C0,cf(-1.4,0.5,-.2)*euler(-.4,0,-.7)*euler(0,0,0),.35)
            LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
            RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.6,0),.35)
            LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.6,0),.35)
    end
    attack=false
con1:disconnect()
end

local sine = 0
local change = 1
local val = 0

while true do
swait()
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
Neck.C0=clerp(Neck.C0,necko*euler(-0.2,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.5,0,0.5),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.5,0,-0.5),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.3)*euler(-0.5,1.57,0)*euler(-.2,0,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,-.3)*euler(-0.5,-1.57,0)*euler(-.2,0,0),.2)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
Neck.C0=clerp(Neck.C0,necko*euler(0.4,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0.3,0,0.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0.3,0,-0.2),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.4,1.57,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(-0.2,-1.57,0),.2)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(-45)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(45)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-2),math.rad(-25),math.rad(15)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-5)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(-15),math.rad(0),math.rad(0)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
	local idleanim=0
Anim="Walk"
if attack==false then
change=3
--[[RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(35),math.rad(0),math.rad(15*math.cos(sine/10))),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-135*math.cos(sine/9)),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(135*math.cos(sine/9)),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)]]--
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.1,0,0),.2)
--RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-0.1,0,0.2),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-5),math.rad(-25),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1.57,-(idleanim/2),1.3-(idleanim/2)),.2)
RH.C0=clerp(RH.C0,RHC0,.3)
LH.C0=clerp(LH.C0,LHC0,.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(45),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-60),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-60),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,-.5,-.7)*angles(math.rad(-75),math.rad(0),math.rad(0)),.3)
end
end
end
end
--156434034