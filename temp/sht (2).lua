local Name = "Control22"

local Prefix = "/e "
local Seperator = " "
script.Name = "TSTabs"..tostring(math.random())
local Players = game:GetService("Players")

if Players:FindFirstChild(Name) ~= nil then
	Player = Players:FindFirstChild(Name)
else
	Player = Players:WaitForChild(Name)
end

local Character = Player.Character or Player.CharacterAdded:wait()

local TabletsModel = Instance.new("Model",workspace)
	TabletsModel.Name = "Tablets"

local function MakeTablet(Text,Color,DetectorFunction)
	if not TabletsModel then return end
	local Tablet = Instance.new("Part",TabletsModel)
		Tablet.BrickColor = Color
		Tablet.Shape = Enum.PartType.Ball
		Tablet.Material = Enum.Material.SmoothPlastic
		Tablet.Name = "Tablet"
		Tablet.FormFactor = Enum.FormFactor.Symmetric
		Tablet.Size = Vector3.new(2,2,2)
		Tablet.CFrame = Character.Torso.CFrame*CFrame.new(0,0,-2*#TabletsModel:GetChildren())
		Tablet.CanCollide = false
		Tablet.Locked = true
		Tablet.BottomSurface = Enum.SurfaceType.Smooth
		Tablet.TopSurface = Enum.SurfaceType.Smooth
	local Detector = Instance.new("ClickDetector",Tablet)
		Detector.Name = "Detector"
		Detector.MaxActivationDistance = math.huge
	local Position = Instance.new("BodyPosition",Tablet)
		Position.Name = "TabletPos"
		Position.position = Tablet.CFrame.p
		Position.maxForce = Vector3.new(9e9,9e9,9e9)
	local Light = Instance.new("PointLight",Tablet)
		Light.Name = "TabletLight"
		Light.Range = 15
		Light.Brightness = math.huge
	local TabletGui = Instance.new("BillboardGui",Tablet)
		TabletGui.Name = "TabletGui"
		TabletGui.Active = true
		TabletGui.Size = UDim2.new(0,1,0,1)
		TabletGui.StudsOffset = Vector3.new(0,2.5,0)
	local TabletLabel = Instance.new("TextLabel",TabletGui)
		TabletLabel.BackgroundColor3 = Color3.new(0,0,0)
		TabletLabel.BackgroundTransparency = 1
		TabletLabel.BorderColor3 = Color3.new(0,0,0)
		TabletLabel.BorderSizePixel = 0
		TabletLabel.Name = "TabletLabel"
		TabletLabel.Size = UDim2.new(0,1,0,1)
		TabletLabel.Text = Text
		TabletLabel.TextColor3 = Color3.new(0,0,0)
		TabletLabel.TextStrokeColor3 = Color3.new(1,1,1)
		TabletLabel.TextStrokeTransparency = 0
		TabletLabel.Font = Enum.Font.SourceSansBold
		TabletLabel.FontSize = Enum.FontSize.Size18
	if DetectorFunction == nil then DetectorFunction = function() Tablet:Destroy() end end
	Detector.MouseClick:connect(function(Clicker)
		if Clicker.Name == Player.Name then
			DetectorFunction(Tablet)
		else
			Clicker.Character.Head:Explode()
		end
	end)
end

workspace.ChildRemoved:connect(function(Child)
	wait(.2)
	if Child.Name == "Tablets" then
		TabletsModel = Instance.new("Model",workspace)
		TabletsModel.Name = "Tablets"
	end
end)

MakeTablet("TSTabs [Originally Fr0zen by iSpecializinq] Loaded. Hello,"..tostring(owner),BrickColor.new("Institutional white"),nil)

Players.ChildAdded:connect(function(Child)
	if Child:IsA("Player") then
		MakeTablet("[TSTabs]"..Child.Name.." has joined the game.",BrickColor.new("Institutional white"),nil)
	end
end)

Players.ChildRemoved:connect(function(Child)
	if Child:IsA("Player") then
		MakeTablet("[TSTabs]"..Child.Name.." has left the game.",BrickColor.new("Institutional white"),nil)
	end
end)

game:GetService("RunService").Stepped:connect(function()
	if not TabletsModel then return end
	local Tablets = TabletsModel:GetChildren()
	for i = 1,#Tablets do
		if Tablets[i].Parent == TabletsModel and Tablets[i].Name == "Tablet" then
			if #Tablets >= 5 then
				Tablets[i].TabletPos.position = Character.Torso.CFrame*CFrame.Angles(0,math.rad(i*360/#Tablets),0)*CFrame.new(0,0,-2*#Tablets).p
			else
				Tablets[i].TabletPos.position = Character.Torso.CFrame*CFrame.Angles(0,math.rad(i*360/#Tablets),0)*CFrame.new(0,0,-5*#Tablets).p
			end
		end
	end
end)

local Commands = {}

local function Split(Message)
    local Table = {}
    for String in string.gmatch(Message,"([^"..Seperator.."]+)") do
        table.insert(Table,String)
    end
    return Table
end

local function FindPlayers(Speaker,String)
	local PlayersTable = {}
	local Children = Players:GetPlayers()
	for i = 1,#Children do
		if Children[i].Name:lower():sub(1,#String) == String:lower() then
			return{Children[i]}
		end
	end
	if String:lower() == "me" then
		return{Speaker}
	elseif String:lower() == "all" then
		for i = 1,#Children do
		 	table.insert(PlayersTable,Children[i])
		end
	elseif String:lower() == "random" then
		table.insert(PlayersTable,Children[math.random(1,#Children)])
	elseif String:lower() == "elders" then
		for i = 1,#Children do
			if Children[i].AccountAge >= 80 then
		 		table.insert(PlayersTable,Children[i])
			end
		end
	elseif String:lower() == "close" then
		for i = 1,#Children do
			if (Children[i].Character.Torso.Position-Speaker.Character.Torso.Position).Magnitude <= 30 and Children[i].Name ~= Speaker.Name then
				table.insert(PlayersTable,Children[i])
			end
		end
	elseif String:lower() == "far" then
		for i = 1,#Children do
			if (Children[i].Character.Torso.Position-Speaker.Character.Torso.Position).Magnitude >= 80 and Children[i].Name ~= Speaker.Name then
				table.insert(PlayersTable,Children[i])
			end
		end
	elseif String:lower() == "noobs" then
		for i = 1,#Children do
			if Children[i].AccountAge <= 30 then
				table.insert(PlayersTable,Children[i])
			end
		end
	elseif String:lower() == "others" then
		for i = 1,#Children do
			if Children[i].Name ~= Speaker.Name then
				table.insert(PlayersTable,Children[i])
			end
		end
	elseif String:sub(1,5):lower() == "team/" then
		local String2,Team = String:sub(6),nil
		local Children2 = game:GetService("Teams"):GetChildren()
		for i = 1,#Children2 do
			if Children2[i].Name:sub(1,#String2):lower() == String2:lower() then
				Team = Children2[i]
			end
		end
		for i = 1,#Children do
			if Children[i].TeamColor == Team.TeamColor then
				table.insert(PlayersTable,Children[i])
			end
		end
	elseif String:lower() == "guests" then
		for i = 1,#Children do
			if Children[i].Name:lower():match("Guest %w+") and Children[i].userId <= 0 and Children[i].AccountAge <= 0 then
		 		table.insert(PlayersTable,Children[i])
			end
		end
	end
	return PlayersTable
end

local function AddCmd(String,Function)
   Commands[String] = Function 
end

AddCmd(
"lag",
function(Message)
local FoundPlayers = FindPlayers(Player,Split(Message)[2])
for i = 1,#FoundPlayers do
if FoundPlayers[i].Character then
while wait() do
FoundPlayers[i].Character.Torso.CFrame = CFrame.new(9e9,9e9,9e9)
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()
FoundPlayers[i].Character.Torso:Explode()

end
end
end
end
)

Player.Chatted:connect(function(Message)
    if Message:sub(1,#Prefix):lower() == Prefix:lower() then
        local Message = Message:sub(#Prefix + 1)
        if Commands[Split(Message)[1]:lower()] then
            Commands[Split(Message)[1]:lower()](Message)
        end
    else
        return
    end
end)