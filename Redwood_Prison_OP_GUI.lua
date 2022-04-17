--[[
Redwood Prison GUI Created By Nameless#0001 & Jalos34#1111

Join our Discord to find the script key if you dont know it. The key will change every 2 weeks to stop 3rd parties easily using us.


Our Discord: https://discordapp.com/invite/PFfrxp7

Basic Rules & info:
• Abusing the GUI or breaking rules will result in getting blacklisted or ban from Redwood prison.
• The GUI is for Redwood Prison only.
• Does the GUI log IPs? No literally it doesn't however we have a IP blacklist. (It used to log IPs 5 Months ago or so)
• Attempting to crack the GUI or deobfuscate it will result in a ban. (even just threatening or saying it)
• Using http spy or remote spy when using the GUI will result in a ban. (even just threatening or saying it)
• Using hook functions or attempting to replicate our GUI will result in a ban. (even just threatening or saying it)
• No spamming functions.
• No using broadcasts for rude words.
• No using the GUI to harm others or expose information.
(BASICALLY DONT ABUSE THE GUI OR TRY TO CRACK IT)


THE GUI DONT SUPPORT MAC ONLY WINDOWS IF YOU USE JJSPLOIT OR ANYTHING WITH WRD API IT WONT WORK SO USE MAINDAB! DISCORD FOR MAINDAB: https://discord.gg/7eGGHdM

IF YOU STILL NEED SUPPORT DM JALOS IN HIS DISCORD!

IF YOU WANT TO MAKE A GUI THEN JOIN OUR DISCORD AND USE THE JALOS REDWOOD SCRIPT LIB.


You can customize our GUI to your liking with the following settings!
]]--
_G.WALKSPEED = 100                               --Toggle speed option under functions settings.
_G.JUMPPOWER = 100                               --Toggle speed option under functions settings.
_G.GUIDRAGSPEED = 1.0                            --How fast the GUI drags.
_G.MAINBACKGROUND = Color3.new(0.666667, 0, 0)   --Main background color of the GUI.
_G.HUBBUTTON = Color3.new(1, 1, 1)               --Main background color of buttons for home etc.
_G.TEXTANDBORDER = Color3.new(1,1,1)             --Main background color of the text and lines.
_G.BUTTONBACKGROUND = Color3.new(0.666667, 0, 0) --Main background color of the buttons.
_G.HILIGHTLINES = Color3.new(1, 1, 1)            --Main background color of the border.
_G.GUICLICKID = "903267862"                      --Audio ID of the click set to 0 for no audio.
_G.GUNSTOGGLEKEY = Enum.KeyCode.LeftAlt          --The toggle button for the GUI gun menu.
_G.MAINTOGGLEKEY = Enum.KeyCode.L                --The toggle button for the GUI main.
_G.TELETOGGLEKEY = Enum.KeyCode.LeftAlt          --The toggle button for the GUI tp menu.
_G.EXTRTOGGLEKEY = Enum.KeyCode.LeftAlt          --The toggle button for the GUI extra menu.
_G.guns = {                                      --Tools / items given on give kit on utility page.
"Taser",                                         --Tools / items given on give kit on utility page.
"M98B",                                          --Tools / items given on give kit on utility page.
"ACR",                                           --Tools / items given on give kit on utility page.
"L86A2",                                         --Tools / items given on give kit on utility page.
"Fake ID Card",                                  --Tools / items given on give kit on utility page.
"M60",                                           --Tools / items given on give kit on utility page.
"Parashute",}                                    --Tools / items given on give kit on utility page.
_G.SKIN1SHIRTID = "1931228554"                   --edit shirt / pants ID on wear item.
_G.SKIN1PANTSID = "1931229502"                   --edit shirt / pants ID on wear item.
_G.SKIN2SHIRTID = "3130724146"                   --edit shirt / pants ID on wear item.
_G.SKIN2PANTSID = "3739695749"                   --edit shirt / pants ID on wear item.
_G.SKIN3SHIRTID = "1149750541"                   --edit shirt / pants ID on wear item.
_G.SKIN3PANTSID = "1146539791"                   --edit shirt / pants ID on wear item.
_G.toolsonspawn = {                              --Tools / items given every time you re-spawn.                                          
"Fake ID Card",                                  --Tools / items given every time you re-spawn.
"Shank",}                                        --Tools / items given every time you re-spawn.
loadstring(game:GetObjects('rbxassetid://4889277351')[1].Source)() --Ugh the GUI dummy.