--[[ 
██████╗░██╗░░██╗░█████╗░███╗░░██╗████████╗░█████╗░███╗░░░███╗  ██╗░░██╗
██╔══██╗██║░░██║██╔══██╗████╗░██║╚══██╔══╝██╔══██╗████╗░████║  ╚██╗██╔╝
██████╔╝███████║███████║██╔██╗██║░░░██║░░░██║░░██║██╔████╔██║  ░╚███╔╝░
██╔═══╝░██╔══██║██╔══██║██║╚████║░░░██║░░░██║░░██║██║╚██╔╝██║  ░██╔██╗░
██║░░░░░██║░░██║██║░░██║██║░╚███║░░░██║░░░╚█████╔╝██║░╚═╝░██║  ██╔╝╚██╗
╚═╝░░░░░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝░░░╚═╝░░░░╚════╝░╚═╝░░░░░╚═╝  ╚═╝░░╚═╝
Version: 2.02.b





--]]

if game:GetService('CoreGui'):FindFirstChild('PFX') then 
	game:GetService('CoreGui').PFX:Destroy()
end

if PROTOSMASHER_LOADED and (not shared.repair) then
	warn("Loading ProtoSmasher Fixes, Ty wally and Classy")--credits to wally
	coroutine.wrap(function()
		pcall(function()
			loadstring(game:HttpGet("https://pastebin.com/raw/m8zyuQMv", true))()
		end)
	end)()
	repeat wait() until shared.repair
end

local getgc = (getgc or get_gc_objects);--200 iq for proto ;-;
local getupvalues = (getupvalues or debug.getupvalues);--also 200 for proto
local setupvalue = (setupvalue or debug.setupvalue);--another 200 for proto
local getreg = (getreg or debug.getregistry);

local Windows = {}
local Spotted = {}

local V = Vector3.new()
local Client = {}

for i,v in next, getgc() do
    if network and gamelogic and effects and char then
        break
    end

    if type(v) == "function" then
        for k,x in next, getupvalues(v) do
            if type(x) == "table" then
                for Func, Name in next, x do
                    if Func == "loadgrenade" and "loadgun" then
                        Client.char = x
                    elseif Func == "breakwindows" then
                        Client.effects = x
                    elseif Func == "add" then
                        Client.network = x 
                    end
                end
            end
        end
    end
end

local counter1 = 1
local counter2 = 0

function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end

local RgbTable = {
    RgbBackground = false,
    RgbUi = false
}

local Esp_Settings = {
    RegColor = false,
    RgbColor = false,
    RedColor = false
}

local Char_Settings = {
    FallDamage = false,
    BreakWindows = false,
    InfJump = false,
    WalkSpeedMulti = false,
    NoClip = false
}

local Gun_Settings = {
    NoRecoil = false,
    NoFlash = false,
    NoSway = false,
    NoSpread = false,
    InstaReload = false,
    RapidFire = false,
    FullAuto = false,
    FireRate = false,
    InstaAim = false,
    BulletAcceleration = false
}

local Render_Settings = {
    SpotAll = false,
    Esp = false
}

local in_progress = {
    OneShot = false,
    InfCreds = false,
    InfFrags = false
}


local version = 'v.2.0.1.b'
local Updated = '9/6/19'
local DiscordLink = 'https://discord.gg/MyjGtee'

local GoodStat = 'Hooked, Secured, Ready to use'
local MainFrameFail = 'Failed to hook mainframe'
local HookFuncFail = 'Failed to Hook Functions'
local Failure = 'Failed to Hook func, or Mainframe'

local P = game:GetService'Players'
local client = game:GetService'Players'.LocalPlayer

if Client then
    local LoadGun = Client.char.loadgun
    local LoadFrag = Client.char.loadgrenade

    local Char = Client.char

    local Network = Client.network

    local Effects = Client.effects

    local Send = Network.send

    local function PlayerData()
        for i, v in ipairs(game:GetService'Players':GetPlayers'') do
            if v.TeamColor ~= client.TeamColor then
                table.insert(Spotted, v);
            end;
        end;
        return Spotted
    end
    
        function BreakWindex()--llol
            for i,v in next, workspace:GetDescendants() do
                if v.Name:lower() == "window" then
                    table.insert(Windows,v)
                end
            end
            Effects:breakwindows(Windows)
        end
            --[[do
                local Funcs = debug.getupvalue(Network.add. 'funcs')
                if Funcs then
        
                local bulletnew = Funcs.newbullet
                    function Funcs.newbullet(...)
                        local Args = {...}
                        if Gun_Settings.BulletAcceleration then Args[1].acceleration = Vector3.new(0,0,0) end
                        return bulletnew(unpack(Args))
                    end
                    if settings.SpotAll then
                        Funcs.spotplayer(PlayerData())
                    end
                end
            end]]

            do
                Network.send = function(self, ...)
                    local Args = {...};
                    if #Args > 0 then
                        local Name = Args[1];
                        if Name == 'changehealthx' then
                            if #Args > 4 and Args[5] == 'Falling' and Char_Settings.FallDamage then
                                return
                            end
                        --[[elseif settings.InfCreds then
                            Funcs['updatemoney'](math.huge)
                        end]]
                    end
                    return Send(self, ...)
                end
            end

            --[[
                [TO DO LIST]
                {finished}
            ]]
            Char.loadgun = function(...)
                local args = {...}
                local data = args[2]
                local data2 = args[1]

                if Gun_Settings.NoRecoil then
                    data.camkickmin = V
                    data.camkickmax = V
                    data.aimcamkickmin = V
                    data.aimcamkickmax = V
                    data.aimtranskickmin = V
                    data.aimtranskickmax = V
                    data.transkickmin = V
                    data.transkickmax = V
                    data.rotkickmin = V
                    data.rotkickmax = V
                    data.aimrotkickmin = V
                    data.aimrotkickmax = V
                end

                if Gun_Settings.NoFlash then
                    data.hideflash = true
                    data.hideminimap = true
                end

                if Gun_Settings.NoSway then
                    data.swayamp = 0
                    data.swayspeed = 0
                    data.steadyspeed = 0
                    data.breathspeed = 0
                end

                if Gun_Settings.NoSpread then
                    data.hipfirespreadrecover = 100
                    data.hipfirespread = 0
                    data.hipfirestability = 0
                end

                if Gun_Settings.RapidFire then
                    data.firerate = 1500
                    data.variablefirerate = false
                    data.firemodes = {true, 3, 1}
                    data.requirechamber = false
                end

                if Gun_Settings.FullAuto then
                    data.variablefirerate = false
                    data.firemodes = {true, 3, 1}
                    data.requirechamber = false
                end

                if Gun_Settings.InstaAim then
                    data.aimspeed = 100
                    data.magnifyspeed = 100
                end

                --[[if Gun_Settings.FireRate then
                    data.firerate = FireRateTXT.Text
                    data.variablefirerate = false
                    data.requirechamber = false
                end]]

                --[[if Gun_Settings.BulletAcceleration then
                    data2.acceleration = V;
                    error'error might of failed to load'
                end]]

                if Gun_Settings.InstaReload then
                    for i, v in next, data.animations do
						if string.find(string.lower(i), "reload") then
							data.animations[i].timescale = 0.0
						end
                    end
                end
            args[2] = data
            return LoadGun(unpack(args))
        end

        local function CreateRegEsp( ... )
            for _,p in pairs(game:GetChildren()) do
                if p.ClassName == ("Players") then
                plrs = p
                end
             end
             wait(0.1)
             for _, v in pairs(plrs:GetChildren()) do
                 if v.TeamColor ~= plrs.LocalPlayer.TeamColor and not v.Character.Head:FindFirstChild("BillboardGui") then
                     i = Instance.new("BillboardGui",v.Character.Head)
                     i.Active = true
                     i.AlwaysOnTop = true
                     i.Size = UDim2.new(1,0,1,0)
                     h = Instance.new("Frame",i)
                     h.Size = UDim2.new(2,0,1,0)
                     h.AnchorPoint = Vector2.new(0.25, 0)
                     h.BackgroundColor3 = Color3.new(1,0,0)
                     h.BorderSizePixel = 0
                     h.BackgroundTransparency = 0.4
                     
                     i2 = Instance.new("BillboardGui",v.Character.Torso)
                     i2.Active = true
                     i2.AlwaysOnTop = true
                     i2.Size = UDim2.new(2,0,2,0)
                     t = Instance.new("Frame",i2)
                     t.Size = UDim2.new(1,0,1,0)
                     t.AnchorPoint = Vector2.new(0, 0)
                     t.BackgroundColor3 = Color3.new(0,1,0)
                     t.BorderSizePixel = 0
                     t.BackgroundTransparency = 0.4
                     
                     i3 = Instance.new("BillboardGui",v.Character["Left Arm"])
                     i3.Active = true
                     i3.AlwaysOnTop = true
                     i3.Size = UDim2.new(1,0,2,0)
                     la = Instance.new("Frame",i3)
                     la.Size = UDim2.new(1,0,1,0)
                     la.AnchorPoint = Vector2.new(0, 0)
                     la.BackgroundColor3 = Color3.new(0,0,1)
                     la.BorderSizePixel = 0
                     la.BackgroundTransparency = 0.4
                     
                     i4 = Instance.new("BillboardGui",v.Character["Right Arm"])
                     i4.Active = true
                     i4.AlwaysOnTop = true
                     i4.Size = UDim2.new(1,0,2,0)
                     ra = Instance.new("Frame",i4)
                     ra.Size = UDim2.new(1,0,1,0)
                     ra.AnchorPoint = Vector2.new(0, 0)
                     ra.BackgroundColor3 = Color3.new(0,0,1)
                     ra.BorderSizePixel = 0
                     ra.BackgroundTransparency = 0.4
                     
                     i5 = Instance.new("BillboardGui",v.Character["Left Leg"])
                     i5.Active = true
                     i5.AlwaysOnTop = true
                     i5.Size = UDim2.new(1,0,2,0)
                     ll = Instance.new("Frame",i5)
                     ll.Size = UDim2.new(1,0,1,0)
                     ll.AnchorPoint = Vector2.new(0, 0)
                     ll.BackgroundColor3 = Color3.new(0,0,1)
                     ll.BorderSizePixel = 0
                     ll.BackgroundTransparency = 0.4

                     i6 = Instance.new("BillboardGui",v.Character["Right Leg"])
                     i6.Active = true
                     i6.AlwaysOnTop = true
                     i6.Size = UDim2.new(1,0,2,0)
                     rl = Instance.new("Frame",i6)
                     rl.Size = UDim2.new(1,0,1,0)
                     rl.AnchorPoint = Vector2.new(0, 0)
                     rl.BackgroundColor3 = Color3.new(0,0,1)
                     rl.BorderSizePixel = 0
                     rl.BackgroundTransparency = 0.4
                 end
             end
        end

        local function CreateRedEsp( ... )
            for _,p in pairs(game:GetChildren()) do
                if p.ClassName == ("Players") then
                plrs = p
                end
             end
             wait(0.1)
             for _, v in pairs(plrs:GetChildren()) do
                 if v.TeamColor ~= plrs.LocalPlayer.TeamColor and not v.Character.Head:FindFirstChild("BillboardGui") then
                     i = Instance.new("BillboardGui",v.Character.Head)
                     i.Active = true
                     i.AlwaysOnTop = true
                     i.Size = UDim2.new(1,0,1,0)
                     h = Instance.new("Frame",i)
                     h.Size = UDim2.new(2,0,1,0)
                     h.AnchorPoint = Vector2.new(0.25, 0)
                     h.BackgroundColor3 = Color3.new(1,0,0)
                     h.BorderSizePixel = 0
                     h.BackgroundTransparency = 0.4
                     
                     i2 = Instance.new("BillboardGui",v.Character.Torso)
                     i2.Active = true
                     i2.AlwaysOnTop = true
                     i2.Size = UDim2.new(2,0,2,0)
                     t = Instance.new("Frame",i2)
                     t.Size = UDim2.new(1,0,1,0)
                     t.AnchorPoint = Vector2.new(0, 0)
                     t.BackgroundColor3 = Color3.new(0,1,0)
                     t.BorderSizePixel = 0
                     t.BackgroundTransparency = 0.4
                     
                     i3 = Instance.new("BillboardGui",v.Character["Left Arm"])
                     i3.Active = true
                     i3.AlwaysOnTop = true
                     i3.Size = UDim2.new(1,0,2,0)
                     la = Instance.new("Frame",i3)
                     la.Size = UDim2.new(1,0,1,0)
                     la.AnchorPoint = Vector2.new(0, 0)
                     la.BackgroundColor3 = Color3.new(0,0,1)
                     la.BorderSizePixel = 0
                     la.BackgroundTransparency = 0.4
                     
                     i4 = Instance.new("BillboardGui",v.Character["Right Arm"])
                     i4.Active = true
                     i4.AlwaysOnTop = true
                     i4.Size = UDim2.new(1,0,2,0)
                     ra = Instance.new("Frame",i4)
                     ra.Size = UDim2.new(1,0,1,0)
                     ra.AnchorPoint = Vector2.new(0, 0)
                     ra.BackgroundColor3 = Color3.new(0,0,1)
                     ra.BorderSizePixel = 0
                     ra.BackgroundTransparency = 0.4
                     
                     i5 = Instance.new("BillboardGui",v.Character["Left Leg"])
                     i5.Active = true
                     i5.AlwaysOnTop = true
                     i5.Size = UDim2.new(1,0,2,0)
                     ll = Instance.new("Frame",i5)
                     ll.Size = UDim2.new(1,0,1,0)
                     ll.AnchorPoint = Vector2.new(0, 0)
                     ll.BackgroundColor3 = Color3.new(0,0,1)
                     ll.BorderSizePixel = 0
                     ll.BackgroundTransparency = 0.4

                     i6 = Instance.new("BillboardGui",v.Character["Right Leg"])
                     i6.Active = true
                     i6.AlwaysOnTop = true
                     i6.Size = UDim2.new(1,0,2,0)
                     rl = Instance.new("Frame",i6)
                     rl.Size = UDim2.new(1,0,1,0)
                     rl.AnchorPoint = Vector2.new(0, 0)
                     rl.BackgroundColor3 = Color3.new(0,0,1)
                     rl.BorderSizePixel = 0
                     rl.BackgroundTransparency = 0.4
                 end
            end
        end

        local function CreateRgbEsp( ... )
            for _,p in pairs(game:GetChildren()) do
                if p.ClassName == ("Players") then
                plrs = p
                end
             end
             wait(0.1)
             for _, v in pairs(plrs:GetChildren()) do
                 if v.TeamColor ~= plrs.LocalPlayer.TeamColor and not v.Character.Head:FindFirstChild("BillboardGui") then
                     i = Instance.new("BillboardGui",v.Character.Head)
                     i.Active = true
                     i.AlwaysOnTop = true
                     i.Size = UDim2.new(1,0,1,0)
                     h = Instance.new("Frame",i)
                     h.Size = UDim2.new(2,0,1,0)
                     h.AnchorPoint = Vector2.new(0.25, 0)
                     h.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                     h.BorderSizePixel = 0
                     h.BackgroundTransparency = 0.4
                     
                     i2 = Instance.new("BillboardGui",v.Character.Torso)
                     i2.Active = true
                     i2.AlwaysOnTop = true
                     i2.Size = UDim2.new(2,0,2,0)
                     t = Instance.new("Frame",i2)
                     t.Size = UDim2.new(1,0,1,0)
                     t.AnchorPoint = Vector2.new(0, 0)
                     t.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                     t.BorderSizePixel = 0
                     t.BackgroundTransparency = 0.4
                     
                     i3 = Instance.new("BillboardGui",v.Character["Left Arm"])
                     i3.Active = true
                     i3.AlwaysOnTop = true
                     i3.Size = UDim2.new(1,0,2,0)
                     la = Instance.new("Frame",i3)
                     la.Size = UDim2.new(1,0,1,0)
                     la.AnchorPoint = Vector2.new(0, 0)
                     la.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                     la.BorderSizePixel = 0
                     la.BackgroundTransparency = 0.4
                     
                     i4 = Instance.new("BillboardGui",v.Character["Right Arm"])
                     i4.Active = true
                     i4.AlwaysOnTop = true
                     i4.Size = UDim2.new(1,0,2,0)
                     ra = Instance.new("Frame",i4)
                     ra.Size = UDim2.new(1,0,1,0)
                     ra.AnchorPoint = Vector2.new(0, 0)
                     ra.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                     ra.BorderSizePixel = 0
                     ra.BackgroundTransparency = 0.4
                     
                     i5 = Instance.new("BillboardGui",v.Character["Left Leg"])
                     i5.Active = true
                     i5.AlwaysOnTop = true
                     i5.Size = UDim2.new(1,0,2,0)
                     ll = Instance.new("Frame",i5)
                     ll.Size = UDim2.new(1,0,1,0)
                     ll.AnchorPoint = Vector2.new(0, 0)
                     ll.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                     ll.BorderSizePixel = 0
                     ll.BackgroundTransparency = 0.4

                     i6 = Instance.new("BillboardGui",v.Character["Right Leg"])
                     i6.Active = true
                     i6.AlwaysOnTop = true
                     i6.Size = UDim2.new(1,0,2,0)
                     rl = Instance.new("Frame",i6)
                     rl.Size = UDim2.new(1,0,1,0)
                     rl.AnchorPoint = Vector2.new(0, 0)
                     rl.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                     rl.BorderSizePixel = 0
                     rl.BackgroundTransparency = 0.4
                 end
            end
        end

        local function RemoveEsp()
            for k, x in next, workspace:GetChildren() do
                for i, v in next, x:GetChildren() do
                    for a, b in next, v:GetChildren() do
                        if b.ClassName == 'BillboardGui' then
                            b:Destroy()
                        end
                    end
                end
            end
        end

        do
            if Esp_Settings.RegColor then
                CreateRegEsp()
            end

            if Esp_Settings.RgbColor then
                CreateRgbEsp()
            end

            if Esp_Settings.RedColor then
                CreateRedEsp()
            end

            if Render_Settings.Esp then
                CreateRegEsp()
            end
        end

        do--another shittiest shit i have ever done lmao
            if RgbTable.RgbBackground then
                while wait() do
                    Bar1.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    Bar2.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    Bar3.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    Bar4.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    Bar5.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    Bar6.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    counter1 = counter1 + 0.01
                end
            end

            if RgbTable.RgbUi then
                EspColorSettings.BorderSizePixel = 1
                SettingsFrame.BorderSizePixel = 1
                CharacterFrame.BorderSizePixel = 1
                RenderFrame.BorderSizePixel = 1
                GunModFrame.BorderSizePixel = 1
                GameSetFrame.BorderSizePixel = 1
                while wait() do
                    EspColorSettings.BorderColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    SettingsFrame.BorderColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    CharacterFrame.BorderColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    RenderFrame.BorderColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    GunModFrame.BorderColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    GameSetFrame.BorderColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    counter1 = counter1 + 0.01
                end
            end
        end

        function InfJumpers()--Made by Exploit Revived(Old Lx friend ;-; he quit xd)
            local Player = game:GetService("Players").LocalPlayer;
            local UserInputService = game:GetService("UserInputService");
            local Bricks = {};
            local Space;
            local WalkInAir = false;
            
            UserInputService.InputBegan:Connect(function(
                InputObject,
                GameProcessedEvent
                )
                if (
                    (not GameProcessedEvent) and 
                    (InputObject.UserInputType == Enum.UserInputType.Keyboard)
                ) then
                    if (InputObject.KeyCode == Enum.KeyCode.P) then
                        for Key, Value in next, Bricks do
                            Value:Destroy();
                        end;
                    elseif (InputObject.KeyCode == Enum.KeyCode.Space) then
                        Space = true;
                    elseif (InputObject.KeyCode == Enum.KeyCode.L) then
                        WalkInAir = (not WalkInAir);
                    end;
                end;
            end);

            UserInputService.InputEnded:Connect(function(
                InputObject,
                GameProcessedEvent
                )
                if (
                    (not GameProcessedEvent) and
                    (InputObject.UserInputType == Enum.UserInputType.Keyboard)
                ) then
                    if (InputObject.KeyCode == Enum.KeyCode.Space) then
                        Space = nil;
                    end;
                end;
            end);

            local LastPosition = Vector3.new(0, 0, 0);

            game:GetService("RunService").RenderStepped:Connect(function()
                local PositionChanged;
                local Torso = (
                    Player.Character or
                    Player.CharacterAdded:wait()
                ):WaitForChild("Torso");
                if ((Torso.Position - LastPosition).Magnitude > 0.75) then
                    PositionChanged = true;
                end;

                if (Space or (WalkInAir and PositionChanged)) then
                    local FlyBrick = Instance.new("Part",
                    (
                        Torso:GetChildren()[1] or
                        Torso
                    )
                );

                FlyBrick.Transparency = 1;
                FlyBrick.Anchored = true;

                FlyBrick.CFrame = (
                    Torso.CFrame *
                    CFrame.new(0, -2.25, 0)
                );

                FlyBrick.Size = Vector3.new(5, 0.05, 5);
                FlyBrick.BrickColor = BrickColor.new("Institutional white");
                FlyBrick.Locked = true;
                FlyBrick.TopSurface = Enum.SurfaceType.SmoothNoOutlines;
                FlyBrick.BottomSurface = FlyBrick.TopSurface;
                FlyBrick.RightSurface = FlyBrick.TopSurface;
                FlyBrick.LeftSurface = FlyBrick.TopSurface;
                FlyBrick.FrontSurface = FlyBrick.TopSurface;
                FlyBrick.BackSurface = FlyBrick.TopSurface;
                Bricks[#Bricks + 1] = FlyBrick;
            end;
            LastPosition = Torso.Position;
        end)   
    end

    local PFX = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local Side1 = Instance.new("Frame")
    local Side2 = Instance.new("Frame")
    local MainTitle = Instance.new("ImageLabel")
    local Version = Instance.new("TextLabel")
    local Credits = Instance.new("TextLabel")
    local Visual = Instance.new("TextButton")
    local GunMod = Instance.new("TextButton")
    local Character = Instance.new("TextButton")
    local Gayme = Instance.new("TextButton")
    local SettingsX = Instance.new("TextButton")
    local ToHide = Instance.new("TextLabel")
    local RenderFrame = Instance.new("Frame")
    local VisTitle = Instance.new("TextLabel")
    local Bar3 = Instance.new("Frame")
    local ESPBTN = Instance.new("TextButton")
    local SpotAllBTN = Instance.new("TextButton")
    local ColorSettings = Instance.new("TextButton")
    local CharacterFrame = Instance.new("Frame")
    local ClientTitle = Instance.new("TextLabel")
    local Bar4 = Instance.new("Frame")
    local InfJumpBTN = Instance.new("TextButton")
    local NoClipBTN = Instance.new("TextButton")
    local NoFallDamageBTN = Instance.new("TextButton")
    local GunModFrame = Instance.new("Frame")
    local GunTitle = Instance.new("TextLabel")
    local Bar5 = Instance.new("Frame")
    local NoFlashBTN = Instance.new("TextButton")
    local NoRecoilBTN = Instance.new("TextButton")
    local NoSwayBTN = Instance.new("TextButton")
    local FullAutoBTN = Instance.new("TextButton")
    local RapidFireBTN = Instance.new("TextButton")
    local InstantReloadBTN = Instance.new("TextButton")
    local InstaAimBTN = Instance.new("TextButton")
    local BulletSpeedBTN = Instance.new("TextButton")
    local NoSpreadBTN = Instance.new("TextButton")
    local GameSetFrame = Instance.new("Frame")
    local GameTitle = Instance.new("TextLabel")
    local Bar6 = Instance.new("Frame")
    local BreakWindowsBTN = Instance.new("TextButton")
    local SettingsFrame = Instance.new("Frame")
    local SettingsTitle = Instance.new("TextLabel")
    local Bar1 = Instance.new("Frame")
    local RGBBTN = Instance.new("TextButton")
    local OUTERRGB = Instance.new("TextButton")
    local EspColorSettings = Instance.new("Frame")
    local ColorIndexLib = Instance.new("TextLabel")
    local Bar2 = Instance.new("Frame")
    local RGBEspBTN = Instance.new("TextButton")
    local RegEspColorBTN = Instance.new("TextButton")
    local RedEspColorBTN = Instance.new("TextButton")
    
    PFX.Name = "PFX"
    PFX.Parent = game.CoreGui
    
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = PFX
    MainFrame.Active = true
    MainFrame.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
    MainFrame.BorderSizePixel = 0
    MainFrame.Position = UDim2.new(0.0574573763, 0, 0.20023419, 0)
    MainFrame.Selectable = true
    MainFrame.Size = UDim2.new(0, 200, 0, 278)
    
    Side1.Name = "Side1"
    Side1.Parent = MainFrame
    Side1.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
    Side1.BorderSizePixel = 0
    Side1.Position = UDim2.new(-0.020000115, 0, 0.0367231853, 0)
    Side1.Size = UDim2.new(0, 4, 0, 271)
    
    Side2.Name = "Side2"
    Side2.Parent = MainFrame
    Side2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
    Side2.BorderSizePixel = 0
    Side2.Position = UDim2.new(-0.020000115, 0, 1, 0)
    Side2.Size = UDim2.new(0, 200, 0, 4)
    
    MainTitle.Name = "MainTitle"
    MainTitle.Parent = MainFrame
    MainTitle.BackgroundColor3 = Color3.new(1, 1, 1)
    MainTitle.BackgroundTransparency = 1
    MainTitle.Position = UDim2.new(-0.0949999988, 0, -0.109925643, 0)
    MainTitle.Size = UDim2.new(0, 172, 0, 108)
    MainTitle.Image = "rbxassetid://3632679485"
    
    Version.Name = "Version"
    Version.Parent = MainFrame
    Version.BackgroundColor3 = Color3.new(1, 1, 1)
    Version.BackgroundTransparency = 1
    Version.Position = UDim2.new(0.674999952, 0, 0.0269682631, 0)
    Version.Size = UDim2.new(0, 71, 0, 33)
    Version.Font = Enum.Font.SourceSans
    Version.Text = "v.2.02.b"
    Version.TextColor3 = Color3.new(1, 1, 1)
    Version.TextSize = 15
    Version.TextXAlignment = Enum.TextXAlignment.Left
    
    Credits.Name = "Credits"
    Credits.Parent = MainFrame
    Credits.BackgroundColor3 = Color3.new(1, 1, 1)
    Credits.BackgroundTransparency = 1
    Credits.Position = UDim2.new(0, 0, 0.943238616, 0)
    Credits.Size = UDim2.new(0, 200, 0, 15)
    Credits.Font = Enum.Font.SourceSans
    Credits.Text = "By ThisW0ntGetBanned"
    Credits.TextColor3 = Color3.new(1, 1, 1)
    Credits.TextSize = 14
    
    Visual.Name = "Visual"
    Visual.Parent = MainFrame
    Visual.BackgroundColor3 = Color3.new(1, 1, 1)
    Visual.BackgroundTransparency = 1
    Visual.Position = UDim2.new(0.075000003, 0, 0.172336712, 0)
    Visual.Size = UDim2.new(0, 185, 0, 31)
    Visual.Font = Enum.Font.SourceSans
    Visual.Text = "[ + ] Visuals - Rendering"
    Visual.TextColor3 = Color3.new(1, 1, 1)
    Visual.TextSize = 20
    Visual.TextXAlignment = Enum.TextXAlignment.Left
    
    GunMod.Name = "GunMod"
    GunMod.Parent = MainFrame
    GunMod.BackgroundColor3 = Color3.new(1, 1, 1)
    GunMod.BackgroundTransparency = 1
    GunMod.Position = UDim2.new(0.075000003, 0, 0.467503935, 0)
    GunMod.Size = UDim2.new(0, 185, 0, 31)
    GunMod.Font = Enum.Font.SourceSans
    GunMod.Text = "[ + ] Gun Modding"
    GunMod.TextColor3 = Color3.new(1, 1, 1)
    GunMod.TextSize = 20
    GunMod.TextXAlignment = Enum.TextXAlignment.Left
    
    Character.Name = "Character"
    Character.Parent = MainFrame
    Character.BackgroundColor3 = Color3.new(1, 1, 1)
    Character.BackgroundTransparency = 1
    Character.Position = UDim2.new(0.075000003, 0, 0.320225179, 0)
    Character.Size = UDim2.new(0, 185, 0, 31)
    Character.Font = Enum.Font.SourceSans
    Character.Text = "[ + ] Character - Client"
    Character.TextColor3 = Color3.new(1, 1, 1)
    Character.TextSize = 20
    Character.TextXAlignment = Enum.TextXAlignment.Left
    
    Gayme.Name = "Gayme"
    Gayme.Parent = MainFrame
    Gayme.BackgroundColor3 = Color3.new(1, 1, 1)
    Gayme.BackgroundTransparency = 1
    Gayme.Position = UDim2.new(0.075000003, 0, 0.616672754, 0)
    Gayme.Size = UDim2.new(0, 185, 0, 31)
    Gayme.Font = Enum.Font.SourceSans
    Gayme.Text = "[ + ] Game - Environment "
    Gayme.TextColor3 = Color3.new(1, 1, 1)
    Gayme.TextSize = 20
    Gayme.TextXAlignment = Enum.TextXAlignment.Left
    
    SettingsX.Name = "SettingsX"
    SettingsX.Parent = MainFrame
    SettingsX.BackgroundColor3 = Color3.new(1, 1, 1)
    SettingsX.BackgroundTransparency = 1
    SettingsX.Position = UDim2.new(0.075000003, 0, 0.757163763, 0)
    SettingsX.Size = UDim2.new(0, 185, 0, 31)
    SettingsX.Font = Enum.Font.SourceSans
    SettingsX.Text = "[ + ] UI - Settings"
    SettingsX.TextColor3 = Color3.new(1, 1, 1)
    SettingsX.TextSize = 20
    SettingsX.TextXAlignment = Enum.TextXAlignment.Left
    
    ToHide.Name = "ToHide"
    ToHide.Parent = MainFrame
    ToHide.BackgroundColor3 = Color3.new(1, 1, 1)
    ToHide.BackgroundTransparency = 1
    ToHide.Position = UDim2.new(0.504999876, 0, 0.868674517, 0)
    ToHide.Size = UDim2.new(0, 86, 0, 20)
    ToHide.Font = Enum.Font.SourceSans
    ToHide.Text = "press [ p ] to hide"
    ToHide.TextColor3 = Color3.new(0.333333, 1, 0)
    ToHide.TextSize = 15
    ToHide.TextXAlignment = Enum.TextXAlignment.Left
    
    RenderFrame.Name = "RenderFrame"
    RenderFrame.Parent = MainFrame
    RenderFrame.Active = true
    RenderFrame.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
    RenderFrame.BorderSizePixel = 0
    RenderFrame.Position = UDim2.new(1.15500009, 0, 0, 0)
    RenderFrame.Selectable = true
    RenderFrame.Size = UDim2.new(0, 190, 0, 210)
    RenderFrame.Visible = false
    
    VisTitle.Name = "VisTitle"
    VisTitle.Parent = RenderFrame
    VisTitle.BackgroundColor3 = Color3.new(1, 1, 1)
    VisTitle.BackgroundTransparency = 1
    VisTitle.Size = UDim2.new(0, 190, 0, 40)
    VisTitle.Font = Enum.Font.SourceSans
    VisTitle.Text = "Visual - Rendering"
    VisTitle.TextColor3 = Color3.new(1, 1, 1)
    VisTitle.TextSize = 20
    
    Bar3.Name = "Bar3"
    Bar3.Parent = RenderFrame
    Bar3.BackgroundColor3 = Color3.new(0.00392157, 1, 0.168627)
    Bar3.BorderSizePixel = 0
    Bar3.Position = UDim2.new(0, 0, 0.188786358, 0)
    Bar3.Size = UDim2.new(0, 190, 0, 4)
    
    ESPBTN.Name = "ESPBTN"
    ESPBTN.Parent = RenderFrame
    ESPBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    ESPBTN.BackgroundTransparency = 1
    ESPBTN.Position = UDim2.new(0, 0, 0.223549753, 0)
    ESPBTN.Size = UDim2.new(0, 190, 0, 37)
    ESPBTN.Font = Enum.Font.SourceSans
    ESPBTN.Text = "[ + ] Esp/Chams: OFF"
    ESPBTN.TextColor3 = Color3.new(1, 0, 0)
    ESPBTN.TextSize = 20
    
    SpotAllBTN.Name = "SpotAllBTN"
    SpotAllBTN.Parent = RenderFrame
    SpotAllBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    SpotAllBTN.BackgroundTransparency = 1
    SpotAllBTN.Position = UDim2.new(0, 0, 0.422464281, 0)
    SpotAllBTN.Size = UDim2.new(0, 190, 0, 37)
    SpotAllBTN.Font = Enum.Font.SourceSans
    SpotAllBTN.Text = "[ + ] Spot All:  OFF"
    SpotAllBTN.TextColor3 = Color3.new(1, 0, 0)
    SpotAllBTN.TextSize = 20
    
    ColorSettings.Name = "ColorSettings"
    ColorSettings.Parent = RenderFrame
    ColorSettings.BackgroundColor3 = Color3.new(1, 1, 1)
    ColorSettings.BackgroundTransparency = 1
    ColorSettings.Position = UDim2.new(0, 0, 0.617702365, 0)
    ColorSettings.Size = UDim2.new(0, 190, 0, 37)
    ColorSettings.Font = Enum.Font.SourceSans
    ColorSettings.Text = "[ + ] Color Settings"
    ColorSettings.TextColor3 = Color3.new(0.333333, 1, 0)
    ColorSettings.TextSize = 20
    
    CharacterFrame.Name = "CharacterFrame"
    CharacterFrame.Parent = MainFrame
    CharacterFrame.Active = true
    CharacterFrame.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
    CharacterFrame.BorderSizePixel = 0
    CharacterFrame.Position = UDim2.new(2.20499992, 0, -4.65661287e-10, 0)
    CharacterFrame.Selectable = true
    CharacterFrame.Size = UDim2.new(0, 190, 0, 210)
    CharacterFrame.Visible = false
    
    ClientTitle.Name = "ClientTitle"
    ClientTitle.Parent = CharacterFrame
    ClientTitle.BackgroundColor3 = Color3.new(1, 1, 1)
    ClientTitle.BackgroundTransparency = 1
    ClientTitle.Size = UDim2.new(0, 190, 0, 40)
    ClientTitle.Font = Enum.Font.SourceSans
    ClientTitle.Text = "Character - Client"
    ClientTitle.TextColor3 = Color3.new(1, 1, 1)
    ClientTitle.TextSize = 20
    
    Bar4.Name = "Bar4"
    Bar4.Parent = CharacterFrame
    Bar4.BackgroundColor3 = Color3.new(0.00392157, 1, 0.168627)
    Bar4.BorderSizePixel = 0
    Bar4.Position = UDim2.new(0, 0, 0.188786358, 0)
    Bar4.Size = UDim2.new(0, 190, 0, 4)
    
    InfJumpBTN.Name = "InfJumpBTN"
    InfJumpBTN.Parent = CharacterFrame
    InfJumpBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    InfJumpBTN.BackgroundTransparency = 1
    InfJumpBTN.Position = UDim2.new(0, 0, 0.223549753, 0)
    InfJumpBTN.Size = UDim2.new(0, 190, 0, 37)
    InfJumpBTN.Font = Enum.Font.SourceSans
    InfJumpBTN.Text = "[ + ] Inf Jump: OFF"
    InfJumpBTN.TextColor3 = Color3.new(1, 0, 0)
    InfJumpBTN.TextSize = 20
    
    NoClipBTN.Name = "NoClipBTN"
    NoClipBTN.Parent = CharacterFrame
    NoClipBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    NoClipBTN.BackgroundTransparency = 1
    NoClipBTN.Position = UDim2.new(0, 0, 0.422464281, 0)
    NoClipBTN.Size = UDim2.new(0, 190, 0, 37)
    NoClipBTN.Font = Enum.Font.SourceSans
    NoClipBTN.Text = "[ + ] NoClip: OFF"
    NoClipBTN.TextColor3 = Color3.new(1, 0, 0)
    NoClipBTN.TextSize = 20
    
    NoFallDamageBTN.Name = "NoFallDamageBTN"
    NoFallDamageBTN.Parent = CharacterFrame
    NoFallDamageBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    NoFallDamageBTN.BackgroundTransparency = 1
    NoFallDamageBTN.Position = UDim2.new(0, 0, 0.617702365, 0)
    NoFallDamageBTN.Size = UDim2.new(0, 190, 0, 37)
    NoFallDamageBTN.Font = Enum.Font.SourceSans
    NoFallDamageBTN.Text = "[ + ] No Fall Damage: OFF"
    NoFallDamageBTN.TextColor3 = Color3.new(1, 0, 0)
    NoFallDamageBTN.TextSize = 20
    
    GunModFrame.Name = "GunModFrame"
    GunModFrame.Parent = MainFrame
    GunModFrame.Active = true
    GunModFrame.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
    GunModFrame.BorderSizePixel = 0
    GunModFrame.Position = UDim2.new(3.24499869, 0, -1.1920929e-07, 0)
    GunModFrame.Selectable = true
    GunModFrame.Size = UDim2.new(0, 190, 0, 408)
    GunModFrame.Visible = false
    
    GunTitle.Name = "GunTitle"
    GunTitle.Parent = GunModFrame
    GunTitle.BackgroundColor3 = Color3.new(1, 1, 1)
    GunTitle.BackgroundTransparency = 1
    GunTitle.Size = UDim2.new(0, 190, 0, 40)
    GunTitle.Font = Enum.Font.SourceSans
    GunTitle.Text = "Gun - Modding"
    GunTitle.TextColor3 = Color3.new(1, 1, 1)
    GunTitle.TextSize = 20
    
    Bar5.Name = "Bar5"
    Bar5.Parent = GunModFrame
    Bar5.BackgroundColor3 = Color3.new(0.00392157, 1, 0.168627)
    Bar5.BorderSizePixel = 0
    Bar5.Position = UDim2.new(0, 0, 0.0926376581, 0)
    Bar5.Size = UDim2.new(0, 190, 0, 4)
    
    NoFlashBTN.Name = "NoFlashBTN"
    NoFlashBTN.Parent = GunModFrame
    NoFlashBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    NoFlashBTN.BackgroundTransparency = 1
    NoFlashBTN.Position = UDim2.new(0, 0, 0.191430226, 0)
    NoFlashBTN.Size = UDim2.new(0, 190, 0, 37)
    NoFlashBTN.Font = Enum.Font.SourceSans
    NoFlashBTN.Text = "[ + ] No Flash:  OFF"
    NoFlashBTN.TextColor3 = Color3.new(1, 0, 0)
    NoFlashBTN.TextSize = 20
    
    NoRecoilBTN.Name = "NoRecoilBTN"
    NoRecoilBTN.Parent = GunModFrame
    NoRecoilBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    NoRecoilBTN.BackgroundTransparency = 1
    NoRecoilBTN.Position = UDim2.new(0, 0, 0.101541363, 0)
    NoRecoilBTN.Size = UDim2.new(0, 190, 0, 37)
    NoRecoilBTN.Font = Enum.Font.SourceSans
    NoRecoilBTN.Text = "[ + ] No Recoil:  OFF"
    NoRecoilBTN.TextColor3 = Color3.new(1, 0, 0)
    NoRecoilBTN.TextSize = 20
    
    NoSwayBTN.Name = "NoSwayBTN"
    NoSwayBTN.Parent = GunModFrame
    NoSwayBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    NoSwayBTN.BackgroundTransparency = 1
    NoSwayBTN.Position = UDim2.new(0, 0, 0.281139374, 0)
    NoSwayBTN.Size = UDim2.new(0, 190, 0, 37)
    NoSwayBTN.Font = Enum.Font.SourceSans
    NoSwayBTN.Text = "[ + ] No Sway: OFF"
    NoSwayBTN.TextColor3 = Color3.new(1, 0, 0)
    NoSwayBTN.TextSize = 20
    
    FullAutoBTN.Name = "FullAutoBTN"
    FullAutoBTN.Parent = GunModFrame
    FullAutoBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    FullAutoBTN.BackgroundTransparency = 1
    FullAutoBTN.Position = UDim2.new(0, 0, 0.460175008, 0)
    FullAutoBTN.Size = UDim2.new(0, 190, 0, 37)
    FullAutoBTN.Font = Enum.Font.SourceSans
    FullAutoBTN.Text = "[ + ] Full Auto: OFF"
    FullAutoBTN.TextColor3 = Color3.new(1, 0, 0)
    FullAutoBTN.TextSize = 20
    
    RapidFireBTN.Name = "RapidFireBTN"
    RapidFireBTN.Parent = GunModFrame
    RapidFireBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    RapidFireBTN.BackgroundTransparency = 1
    RapidFireBTN.Position = UDim2.new(0, 0, 0.549539566, 0)
    RapidFireBTN.Size = UDim2.new(0, 190, 0, 37)
    RapidFireBTN.Font = Enum.Font.SourceSans
    RapidFireBTN.Text = "[ + ] Rapid Fire: OFF"
    RapidFireBTN.TextColor3 = Color3.new(1, 0, 0)
    RapidFireBTN.TextSize = 20
    
    InstantReloadBTN.Name = "InstantReloadBTN"
    InstantReloadBTN.Parent = GunModFrame
    InstantReloadBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    InstantReloadBTN.BackgroundTransparency = 1
    InstantReloadBTN.Position = UDim2.new(0, 0, 0.638904035, 0)
    InstantReloadBTN.Size = UDim2.new(0, 190, 0, 37)
    InstantReloadBTN.Font = Enum.Font.SourceSans
    InstantReloadBTN.Text = "[ + ] Instant Reload: OFF"
    InstantReloadBTN.TextColor3 = Color3.new(1, 0, 0)
    InstantReloadBTN.TextSize = 20
    
    InstaAimBTN.Name = "InstaAimBTN"
    InstaAimBTN.Parent = GunModFrame
    InstaAimBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    InstaAimBTN.BackgroundTransparency = 1
    InstaAimBTN.Position = UDim2.new(0, 0, 0.72876358, 0)
    InstaAimBTN.Size = UDim2.new(0, 190, 0, 36)
    InstaAimBTN.Font = Enum.Font.SourceSans
    InstaAimBTN.Text = "[ + ] Insta Aim: OFF"
    InstaAimBTN.TextColor3 = Color3.new(1, 0, 0)
    InstaAimBTN.TextSize = 20
    
    BulletSpeedBTN.Name = "BulletSpeedBTN"
    BulletSpeedBTN.Parent = GunModFrame
    BulletSpeedBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    BulletSpeedBTN.BackgroundTransparency = 1
    BulletSpeedBTN.Position = UDim2.new(0, 0, 0.815182209, 0)
    BulletSpeedBTN.Size = UDim2.new(0, 190, 0, 33)
    BulletSpeedBTN.Font = Enum.Font.SourceSans
    BulletSpeedBTN.Text = "[ + ] Bullet Acceleration: OFF"
    BulletSpeedBTN.TextColor3 = Color3.new(1, 0, 0)
    BulletSpeedBTN.TextSize = 18
    
    NoSpreadBTN.Name = "NoSpreadBTN"
    NoSpreadBTN.Parent = GunModFrame
    NoSpreadBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    NoSpreadBTN.BackgroundTransparency = 1
    NoSpreadBTN.Position = UDim2.new(0, 0, 0.371825635, 0)
    NoSpreadBTN.Size = UDim2.new(0, 190, 0, 37)
    NoSpreadBTN.Font = Enum.Font.SourceSans
    NoSpreadBTN.Text = "[ + ] No Spread: OFF"
    NoSpreadBTN.TextColor3 = Color3.new(1, 0, 0)
    NoSpreadBTN.TextSize = 20
    
    GameSetFrame.Name = "GameSetFrame"
    GameSetFrame.Parent = MainFrame
    GameSetFrame.Active = true
    GameSetFrame.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
    GameSetFrame.BorderSizePixel = 0
    GameSetFrame.Position = UDim2.new(4.28999996, 0, 0, 0)
    GameSetFrame.Selectable = true
    GameSetFrame.Size = UDim2.new(0, 190, 0, 103)
    GameSetFrame.Visible = false
    
    GameTitle.Name = "GameTitle"
    GameTitle.Parent = GameSetFrame
    GameTitle.BackgroundColor3 = Color3.new(1, 1, 1)
    GameTitle.BackgroundTransparency = 1
    GameTitle.Size = UDim2.new(0, 190, 0, 40)
    GameTitle.Font = Enum.Font.SourceSans
    GameTitle.Text = "Game - Environment"
    GameTitle.TextColor3 = Color3.new(1, 1, 1)
    GameTitle.TextSize = 20
    
    Bar6.Name = "Bar6"
    Bar6.Parent = GameSetFrame
    Bar6.BackgroundColor3 = Color3.new(0.00392157, 1, 0.168627)
    Bar6.BorderSizePixel = 0
    Bar6.Position = UDim2.new(0, 0, 0.385516077, 0)
    Bar6.Size = UDim2.new(0, 190, 0, 4)
    
    BreakWindowsBTN.Name = "BreakWindowsBTN"
    BreakWindowsBTN.Parent = GameSetFrame
    BreakWindowsBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    BreakWindowsBTN.BackgroundTransparency = 1
    BreakWindowsBTN.Position = UDim2.new(0, 0, 0.459114313, 0)
    BreakWindowsBTN.Size = UDim2.new(0, 190, 0, 37)
    BreakWindowsBTN.Font = Enum.Font.SourceSans
    BreakWindowsBTN.Text = "[ + ] Break Windows "
    BreakWindowsBTN.TextColor3 = Color3.new(1, 0, 0)
    BreakWindowsBTN.TextSize = 20
    
    SettingsFrame.Name = "SettingsFrame"
    SettingsFrame.Parent = MainFrame
    SettingsFrame.Active = true
    SettingsFrame.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
    SettingsFrame.BorderSizePixel = 0
    SettingsFrame.Position = UDim2.new(5.34000111, 0, 0, 0)
    SettingsFrame.Selectable = true
    SettingsFrame.Size = UDim2.new(0, 190, 0, 142)
    SettingsFrame.Visible = false
    
    SettingsTitle.Name = "SettingsTitle"
    SettingsTitle.Parent = SettingsFrame
    SettingsTitle.BackgroundColor3 = Color3.new(1, 1, 1)
    SettingsTitle.BackgroundTransparency = 1
    SettingsTitle.Size = UDim2.new(0, 190, 0, 40)
    SettingsTitle.Font = Enum.Font.SourceSans
    SettingsTitle.Text = "UI - Settings"
    SettingsTitle.TextColor3 = Color3.new(1, 1, 1)
    SettingsTitle.TextSize = 20
    
    Bar1.Name = "Bar1"
    Bar1.Parent = SettingsFrame
    Bar1.BackgroundColor3 = Color3.new(0.00392157, 1, 0.168627)
    Bar1.BorderSizePixel = 0
    Bar1.Position = UDim2.new(0, 0, 0.27571857, 0)
    Bar1.Size = UDim2.new(0, 190, 0, 4)
    
    RGBBTN.Name = "RGBBTN"
    RGBBTN.Parent = SettingsFrame
    RGBBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    RGBBTN.BackgroundTransparency = 1
    RGBBTN.Position = UDim2.new(0, 0, 0.556354523, 0)
    RGBBTN.Size = UDim2.new(0, 190, 0, 37)
    RGBBTN.Font = Enum.Font.SourceSans
    RGBBTN.Text = "[ + ] RGB UI : ON"
    RGBBTN.TextColor3 = Color3.new(0.333333, 1, 0)
    RGBBTN.TextSize = 20
    
    OUTERRGB.Name = "OUTERRGB"
    OUTERRGB.Parent = SettingsFrame
    OUTERRGB.BackgroundColor3 = Color3.new(1, 1, 1)
    OUTERRGB.BackgroundTransparency = 1
    OUTERRGB.Position = UDim2.new(0.00526315812, 0, 0.297475904, 0)
    OUTERRGB.Size = UDim2.new(0, 190, 0, 37)
    OUTERRGB.Font = Enum.Font.SourceSans
    OUTERRGB.Text = "[ + ] Outer UI RGB: OFF"
    OUTERRGB.TextColor3 = Color3.new(1, 0, 0)
    OUTERRGB.TextSize = 20
    
    EspColorSettings.Name = "EspColorSettings"
    EspColorSettings.Parent = MainFrame
    EspColorSettings.Active = true
    EspColorSettings.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
    EspColorSettings.BorderSizePixel = 0
    EspColorSettings.Position = UDim2.new(1.15499997, 0, 0.830935359, 0)
    EspColorSettings.Selectable = true
    EspColorSettings.Size = UDim2.new(0, 399, 0, 168)
    EspColorSettings.Visible = false
    
    ColorIndexLib.Name = "ColorIndexLib"
    ColorIndexLib.Parent = EspColorSettings
    ColorIndexLib.BackgroundColor3 = Color3.new(1, 1, 1)
    ColorIndexLib.BackgroundTransparency = 1
    ColorIndexLib.Position = UDim2.new(0, 0, -0.0119047621, 0)
    ColorIndexLib.Size = UDim2.new(0, 399, 0, 40)
    ColorIndexLib.Font = Enum.Font.SourceSans
    ColorIndexLib.Text = "Color Index - Color Settings - Library"
    ColorIndexLib.TextColor3 = Color3.new(1, 1, 1)
    ColorIndexLib.TextSize = 20
    
    Bar2.Name = "Bar2"
    Bar2.Parent = EspColorSettings
    Bar2.BackgroundColor3 = Color3.new(0.00392157, 1, 0.168627)
    Bar2.BorderSizePixel = 0
    Bar2.Position = UDim2.new(0, 0, 0.222350344, 0)
    Bar2.Size = UDim2.new(0, 399, 0, 4)
    
    RGBEspBTN.Name = "RGBEspBTN"
    RGBEspBTN.Parent = EspColorSettings
    RGBEspBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    RGBEspBTN.BackgroundTransparency = 1
    RGBEspBTN.Position = UDim2.new(0, 0, 0.722184718, 0)
    RGBEspBTN.Size = UDim2.new(0, 399, 0, 37)
    RGBEspBTN.Font = Enum.Font.SourceSans
    RGBEspBTN.Text = "[ + ] RGB Esp: OFF"
    RGBEspBTN.TextColor3 = Color3.new(1, 0, 0)
    RGBEspBTN.TextSize = 20
    
    RegEspColorBTN.Name = "RegEspColorBTN"
    RegEspColorBTN.Parent = EspColorSettings
    RegEspColorBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    RegEspColorBTN.BackgroundTransparency = 1
    RegEspColorBTN.Position = UDim2.new(0, 0, 0.278641939, 0)
    RegEspColorBTN.Size = UDim2.new(0, 399, 0, 37)
    RegEspColorBTN.Font = Enum.Font.SourceSans
    RegEspColorBTN.Text = "[ + ] Color Code Parts - Regular:  OFF"
    RegEspColorBTN.TextColor3 = Color3.new(1, 0, 0)
    RegEspColorBTN.TextSize = 20
    
    RedEspColorBTN.Name = "RedEspColorBTN"
    RedEspColorBTN.Parent = EspColorSettings
    RedEspColorBTN.BackgroundColor3 = Color3.new(1, 1, 1)
    RedEspColorBTN.BackgroundTransparency = 1
    RedEspColorBTN.Position = UDim2.new(0, 0, 0.499215871, 0)
    RedEspColorBTN.Size = UDim2.new(0, 399, 0, 37)
    RedEspColorBTN.Font = Enum.Font.SourceSans
    RedEspColorBTN.Text = "[ + ] Red Color Code - Enemy: OFF"
    RedEspColorBTN.TextColor3 = Color3.new(1, 0, 0)
    RedEspColorBTN.TextSize = 20    
        
        MainFrame.Draggable = true

        if Client then
            print('Functionality Status : '..tostring(GoodStat))--yes ik the console automatically makes it to a string lol.
        end

        if not Client then
            print('Functionality Status : '..tostring(MainFrameFail))
        end

        if not Client and not Network then
            print('Functionality Status : '..tostring(Failure))
        end

        --toggles--
        
        Visual.MouseButton1Click:connect(function()
            if RenderFrame.Visible == false then
                RenderFrame.Visible = true
            elseif RenderFrame.Visible == true then
                RenderFrame.Visible = false
            end
        end)
        
        GunMod.MouseButton1Click:connect(function()
            if GunModFrame.Visible == false then
                GunModFrame.Visible = true
            elseif GunModFrame.Visible == true then
                GunModFrame.Visible = false
            end
        end)
        
        Character.MouseButton1Click:connect(function()
            if CharacterFrame.Visible == false then
                CharacterFrame.Visible = true
            elseif CharacterFrame.Visible == true then
                CharacterFrame.Visible = false
            end
        end)
        
        Gayme.MouseButton1Click:connect(function()
            if GameSetFrame.Visible == false then
                GameSetFrame.Visible = true
            elseif GameSetFrame.Visible == true then
                GameSetFrame.Visible = false
            end
        end)
        
        SettingsX.MouseButton1Click:connect(function()
            if SettingsFrame.Visible == false then
                SettingsFrame.Visible = true
            elseif SettingsFrame.Visible == true then
                SettingsFrame.Visible = false
            end
        end)

        ColorSettings.MouseButton1Click:connect(function()
            if EspColorSettings.Visible == false then
                EspColorSettings.Visible = true
            elseif EspColorSettings.Visible == true then
                EspColorSettings.Visible = false
            end 
        end)
        
        --Visual/Rendering shit--
        ESPBTN.MouseButton1Click:connect(function()
            Render_Settings.Esp = not Render_Settings.Esp 
            if Render_Settings.Esp then
                ESPBTN.Text = "[ + ] Esp/Chams: ON"
                ESPBTN.TextColor3 = Color3.new(0,185,0)
                CreateRegEsp()
            else
                ESPBTN.Text = "[ + ] Esp/Chams: OFF"
                ESPBTN.TextColor3 = Color3.new(170,0,0)
                RemoveEsp()
            end
        end)
        
        --[[SpotAllBTN.MouseButton1Click:connect(function()
            settings.SpotAll = not settings.SpotAll 
            if settings.SpotAll then
            end
        end)]]
        
        --Character/Client shit--
        NoFallDamageBTN.MouseButton1Click:connect(function()
            Char_Settings.FallDamage = not Char_Settings.FallDamage
            if Char_Settings.FallDamage then
                NoFallDamageBTN.Text = '[ + ] No Fall Damage: ON'
                NoFallDamageBTN.TextColor3 = Color3.new(0,185,0)
            else
                NoFallDamageBTN.Text = '[ + ] No Fall Damage: OFF'
                NoFallDamageBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)
        
        InfJumpBTN.MouseButton1Click:connect(function()
            Char_Settings.InfJump = not Char_Settings.InfJump 
            if Char_Settings.InfJump then
                InfJumpers()
                InfJumpBTN.Text = '[ + ] Inf Jump: ON'
                InfJumpBTN.TextColor3 = Color3.new(0,185,0)
            else
                InfJumpBTN.Text = '[ + ] Inf Jump: OFF'
                InfJumpBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)
        
        NoClipBTN.MouseButton1Click:connect(function()
            if NoClipBTN.Text == "[ + ] NoClip: OFF" then
                Char_Settings.NoClip = true
                NoClipBTN.Text = "[ + ] NoClip: ON"
                NoClipBTN.TextColor3 = Color3.new(0,185,0)
                Stepped = game:GetService("RunService").Stepped:Connect(function()
                    if not Char_Settings.NoClip == false then
                        for a, b in pairs(Workspace:GetChildren()) do
                            for i, v in pairs(Workspace[client.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    else
                        Stepped:Disconnect()
                    end
                end)
            elseif NoClipBTN.Text == "[ + ] NoClip: ON" then
                Char_Settings.NoClip = false
                NoClipBTN.Text = "[ + ] NoClip: OFF"
                NoClipBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)
        
        --Gun Modding shit--
        
        NoFlashBTN.MouseButton1Click:connect(function()
            Gun_Settings.NoFlash = not Gun_Settings.NoFlash
            if Gun_Settings.NoFlash then
                NoFlashBTN.Text = '[ + ] No Flash: ON'
                NoFlashBTN.TextColor3 = Color3.new(0,185,0)
            else
                NoFlashBTN.Text = '[ + ] No Flash: OFF'
                NoFlashBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)
        
        NoRecoilBTN.MouseButton1Click:connect(function()
            Gun_Settings.NoRecoil = not Gun_Settings.NoRecoil
            if Gun_Settings.NoRecoil then
                NoRecoilBTN.Text = '[ + ] No Recoil: ON'
                NoRecoilBTN.TextColor3 = Color3.new(0,185,0)
            else
                NoRecoilBTN.Text = '[ + ] No Recoil: OFF'
                NoRecoilBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)

        NoSpreadBTN.MouseButton1Click:connect(function()
            Gun_Settings.NoSpread = not Gun_Settings.NoSpread
            if Gun_Settings.NoSpread then
                NoSpreadBTN.Text = '[ + ] No Spread: ON'
                NoSpreadBTN.TextColor3 = Color3.new(0,185,0)
            else
                NoSpreadBTN.Text = '[ + ] No Spread: OFF'
                NoSpreadBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)
        
        NoSwayBTN.MouseButton1Click:connect(function()
            Gun_Settings.NoSway = not Gun_Settings.NoSway
            if Gun_Settings.NoSway then
                NoSwayBTN.Text = '[ + ] No Sway: ON'
                NoSwayBTN.TextColor3 = Color3.new(0,185,0)
            else
                NoSwayBTN.Text = '[ + ] No Sway: OFF'
                NoSwayBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)
        
        FullAutoBTN.MouseButton1Click:connect(function()
            Gun_Settings.FullAuto = not Gun_Settings.FullAuto
            if Gun_Settings.FullAuto then
                FullAutoBTN.Text = '[ + ] Full Auto: ON'
                FullAutoBTN.TextColor3 = Color3.new(0,185,0)
            else
                FullAutoBTN.Text = '[ + ] Full Auto: OFF'
                FullAutoBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)
        
        RapidFireBTN.MouseButton1Click:connect(function()
            Gun_Settings.RapidFire = not Gun_Settings.RapidFire
            if Gun_Settings.RapidFire then
                RapidFireBTN.Text = '[ + ] Rapid Fire: ON'
                RapidFireBTN.TextColor3 = Color3.new(0,185,0)
            else
                RapidFireBTN.Text = '[ + ]Rapid Fire: OFF'
                RapidFireBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)
        
        InstantReloadBTN.MouseButton1Click:connect(function()
            Gun_Settings.InstaReload = not Gun_Settings.InstaReload
            if Gun_Settings.InstaReload then
                InstantReloadBTN.Text = '[ + ] Instant Reload: ON'
                InstantReloadBTN.TextColor3 = Color3.new(0,185,0)
            else
                InstantReloadBTN.Text = '[ + ] Instant Reload: OFF'
                InstantReloadBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)
        
        BulletSpeedBTN.MouseButton1Click:connect(function()
            Gun_Settings.BulletAcceleration = not Gun_Settings.BulletAcceleration
            if Gun_Settings.BulletAcceleration then
                BulletSpeedBTN.Text = '[ + ] Bullet Acceleration: ON'
                BulletSpeedBTN.TextColor3 = Color3.new(0,185,0)
            else
                BulletSpeedBTN.Text = '[ + ] Bullet Acceleration: OFF'
                BulletSpeedBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)

        InstaAimBTN.MouseButton1Click:connect(function()
            Gun_Settings.InstaAim = not Gun_Settings.InstaAim 
            if Gun_Settings.InstaAim then
                InstaAimBTN.Text = '[ + ] Insta Aim: ON'
                InstaAimBTN.TextColor3 = Color3.new(0,185,0)
            else
                InstaAimBTN.Text = '[ + ] Insta Aim: OFF'
                InstaAimBTN.TextColor3 = Color3.new(170,0,0)
            end
        end)
        
        -- game shit --
        
        BreakWindowsBTN.MouseButton1Click:connect(function()
            settings.BreakWindows = not settings.BreakWindows
            if settings.BreakWindows then
                BreakWindex()
            end
        end)
        
        -- Settings shit --
        
        RGBBTN.MouseButton1Click:connect(function()
            RgbTable.RgbBackground = not RgbTable.RgbBackground
            if RgbTable.RgbBackground then
                RGBBTN.Text = '[ + ] RGB UI: OFF'
                RGBBTN.TextColor3 = Color3.new(170,0,0)
            else
                RGBBTN.Text = '[ + ] RGB UI: ON'
                RGBBTN.TextColor3 = Color3.new(0,185,0)
                while wait() do
                    EspColorSettings.BorderColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    SettingsFrame.BorderColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    CharacterFrame.BorderColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    RenderFrame.BorderColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    GunModFrame.BorderColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    GameSetFrame.BorderColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    ColorSettings.TextColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    counter1 = counter2
                end
            end
        end)
        
        --[[OUTERRGB.MouseButton1Click:connect(function()
            RgbTable.RgbUi = not setting.RgbUi
            if RgbTable.RgbUi then
                EspColorSettings.BorderSizePixel = 1
                SettingsFrame.BorderSizePixel = 1
                CharacterFrame.BorderSizePixel = 1
                RenderFrame.BorderSizePixel = 1
                GunModFrame.BorderSizePixel = 1
                GameSetFrame.BorderSizePixel = 1
            else
                while wait() do
                    EspColorSettings.BorderColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    SettingsFrame.BorderColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    CharacterFrame.BorderColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    RenderFrame.BorderColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    GunModFrame.BorderColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    GameSetFrame.BorderColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                    counter1 = counter1 + 0.01
                end
            end
        end)]]
        
        --Color Coding Library--
        
        RedEspColorBTN.MouseButton1Click:connect(function()
            Esp_Settings.RedColor = not Esp_Settings.RedColor
            if Esp_Settings.RedColor then
                RedEspColorBTN.Text = '[ + ] Red Color Code - Enemy: ON'
                RedEspColorBTN.TextColor3 = Color3.new(0,185,0)
                CreateRedEsp()
            else
                RedEspColorBTN.Text = '[ + ] Red Color Code - Enemy: OFF'
                RedEspColorBTN.TextColor3 = Color3.new(170,0,0)
                RemoveEsp()
            end
        end)
        
        RGBEspBTN.MouseButton1Click:connect(function()
            Esp_Settings.RgbColor = not Esp_Settings.RgbColor
            if Esp_Settings.RgbColor then
                RGBEspBTN.Text = '[ + ] RGB Esp: ON'
                RGBEspBTN.TextColor3 = Color3.new(0,185,0)
                CreateRgbEsp()
            else
                RGBEspBTN.Text = '[ + ] RGB Esp: OFF'
                RGBEspBTN.TextColor3 = Color3.new(170,0,0)
                RemoveEsp()
            end  
        end)
        
        RegEspColorBTN.MouseButton1Click:connect(function()
            Esp_Settings.RegColor = not Esp_Settings.RegColor
            if Esp_Settings.RegColor then
                RegEspColorBTN.Text = '[ + ] Color Code Parts - Regular: ON'
                RegEspColorBTN.TextColor3 = Color3.new(0,185,0)
                CreateRegEsp()
            else
                RegEspColorBTN.Text = '[ + ] Color Code Parts - Regular: OFF'
                RegEspColorBTN.TextColor3 = Color3.new(170,0,0)
                RemoveEsp()
            end
        end)
        
        -- hoool up lmao --

        game:GetService("UserInputService").InputBegan:Connect(function(key,ischat)
            if ischat then return end
            if key.KeyCode == Enum.KeyCode.P then
                MainFrame.Visible = not MainFrame.Visible
            end
        end)

        while wait() do
            MainTitle.ImageColor3 = Color3.fromHSV(zigzag(counter1),1,1)
            Bar1.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1)
            Bar2.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1)
            Bar3.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1)
            Bar4.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1)
            Bar5.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1)
            Bar6.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1)
            ColorSettings.TextColor3 = Color3.fromHSV(zigzag(counter1),1,1)
            counter1 = counter1 + 0.01
        end
    end
end