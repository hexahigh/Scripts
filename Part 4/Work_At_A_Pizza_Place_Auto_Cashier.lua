game:service'RunService'.RenderStepped:Connect(function()
for index, customer in pairs(workspace.Customers:GetChildren()) do
local userdata_1 = customer;
local bool_1 = false;
local userdata_2 = workspace.Register1;
local Target = workspace.GameService.OrderCompleted;
Target:FireServer(userdata_1, bool_1, userdata_2);
end
end)