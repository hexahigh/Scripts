local rekt = Instance.new('ColorCorrectionEffect', game.Lighting)
rekt.TintColor = Color3.new(155, 1, 0)
rekt.Brightness = 0.2
rekt.Contrast = 1
rekt.Saturation = 1
local topkek = Instance.new('BlurEffect', game.Lighting)
topkek.Size = 3
local bloom = Instance.new('BloomEffect', game.Lighting)
bloom.Intensity = 0.4
bloom.Size = 56
bloom.Threshold = 1

           game.Lighting.TimeOfDay=0;
            game.Lighting.Brightness=0;
            game.Lighting.ShadowColor=Color3.new(0,0,0);
            game.Lighting.Ambient=Color3.new(1,0,0);
            game.Lighting.FogEnd=200;
            game.Lighting.FogColor=Color3.new(0,0,0);

      s=Instance.new'Sound';
      s.Parent=workspace;
      s.SoundId='rbxassetid://152840862';
      s.Pitch=1;
      s.Volume=1;
      s.Looped=true;
      s:play();