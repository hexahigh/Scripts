 value = "3225507391"  --song id


    local args = {
        [1] = {
            [1] = "UpdateID",
            [2] =  value,
        },
    }
    
    game:GetService("ReplicatedStorage").Events.UpdateLoadout:FireServer(unpack(args))

local args = {
    [1] = true,
    [2] = game:GetService("ReplicatedStorage").Taunts.Megaphone,
}

game:GetService("ReplicatedStorage").Events.ReplicateGear:FireServer(unpack(args))




Players = game:GetService("Players")
for i, player in pairs(Players:GetPlayers()) do
    print("["..i.."] = "..player.Name)
    local args = {
    [1] = "GET NOOB",
    "["..i.."] = "..player.Name,
}
end