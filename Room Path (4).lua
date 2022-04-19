me = game.Players.LocalPlayer.Character
me.Humanoid.WalkSpeed = "100"
color = "255"
material = "Neon"
while true do wait()
	b=Instance.new("Part",workspace)
	b.Anchored = true
	b.FormFactor = "Custom"
	b.Size = Vector3.new(30,0,20)
	b.CFrame = me.Torso.CFrame * CFrame.new(0,-3,0)
	b.Color = Color3.new(color,color,color)
	b.Material = material
	
		y=Instance.new("Part",workspace)
	y.Anchored = true
	y.FormFactor = "Custom"
	y.Size = Vector3.new(30,0,20)
	y.CFrame = me.Torso.CFrame * CFrame.new(0,23,0)
	y.Color = Color3.new(color)
	y.Material = material
	
	x=Instance.new("Part",b)
	x.Size = Vector3.new(0,25,20)
	x.CFrame = me.Torso.CFrame * CFrame.new(15,10,0)
	x.Anchored = true
	x.Transparency="0.9"
	x.Color = Color3.new(0,0,0)
	
		c=Instance.new("Part",b)
	c.Size = Vector3.new(0,25,20)
	c.CFrame = me.Torso.CFrame * CFrame.new(-15,10,0)
	c.Anchored = true
	c.Transparency="0.9"
	c.Color = Color3.new(0,0,0)

end