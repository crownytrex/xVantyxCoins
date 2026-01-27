local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

--[[CODED BY zyx FOR xvantyx]]--

WindUI:AddTheme({
    Name = "My Theme", -- theme name
    
    Accent = Color3.fromHex("#18181b"),
    Background = Color3.fromHex("#101010"), -- Accent
    Outline = Color3.fromHex("#FFFFFF"),
    Text = Color3.fromHex("#FFFFFF"),
    Placeholder = Color3.fromHex("#7a7a7a"),
    Button = Color3.fromHex("#52525b"),
    Icon = Color3.fromHex("#a1a1aa"),
})

local Window = WindUI:CreateWindow({
    Title = "xVantyx's Ultimate UI - Islands",
    Icon = "door-open", -- lucide icon. optional
    Author = "by zyx", -- optional
})

local Tab = Window:Tab({
    Title = "Islands",
    Icon = "bird", -- optional
    Locked = false,
})

Tab:Select() -- Select Tab

WindUI:Popup({
    Title = "Script loaded Succsessfully",
    Icon = "info",
    Content = "Script loaded Have fun :D",
    Buttons = {
        {
            Title = "Close",
            Callback = function() end,
            Variant = "Tertiary",
        },
        {
            Title = "Okay",
            Icon = "arrow-right",
            Callback = function() end,
            Variant = "Primary",
        }
    }
})

Window:Tag({
    Title = "WORKING",
    Icon = "github",
    Color = Color3.fromHex("#2bff00"),
    Radius = 0, -- from 0 to 13
})

Window:Tag({
    Title = "V2.0.0",
    Icon = "github",
    Color = Color3.fromHex("#2bff00"),
    Radius = 0, -- from 0 to 13
})

local Button = Tab:Button({
    Title = "Lpc sell remote spam",
    Desc = "MUST BE IN HUB",
    Locked = false,
    Callback = function()
        -- Using rpsy sell 1 large pineapple crate to dom and find the remote that gives you the coins. (Replace this text with the remote from rspy)
    end
})

local Button = Tab:Button({
    Title = "Get Loadstring",
    Desc = "Shows loadstring in a popup",
    Locked = false,
    Callback = function()
        WindUI:Popup({
    Title = "Github Loadstring:",
    Icon = "info",
    Content = "loadstring(game:HttpGet("https://raw.githubusercontent.com/crownytrex/xVantyxCoins/refs/heads/main/script.lua"))()",
    Buttons = {
        {
            Title = "Close",
            Callback = function() end,
            Variant = "Tertiary",
        },
        {
            Title = "Okay",
            Icon = "arrow-right",
            Callback = function() end,
            Variant = "Primary",
        }
    }
})
    end
})

local Keybind = Tab:Keybind({
    Title = "Keybind",
    Desc = "Keybind to open ui",
    Value = "G",
    Callback = function(v)
        Window:SetToggleKey(Enum.KeyCode[v])
    end
})

local Tab = Window:Tab({
    Title = "Universal",
    Icon = "bird", -- optional
    Locked = false,
})

local Button = Tab:Button({
    Title = "Fly",
    Desc = "WEEEEE",
    Locked = false,
    Callback = function()
       --- Configs
local flybutton = "e"
local flyspeed = 100
local controls = {
	front = "w",
	back = "s",
	right = "d",
	left = "a",
	up = " ",
	down = "q"
}
-- Configs

local player = game:GetService("Players").LocalPlayer
local mouse = player:GetMouse()
local runservice = game:GetService("RunService")

local flycontrol = {F = 0, R = 0, B = 0, L = 0, U = 0, D = 0}
local flying = false

local function fly()
	local character = player.Character
	if not character then return end
	local hrp = character:FindFirstChild("HumanoidRootPart")
	if not hrp then return end
	local humanoid = character:FindFirstChildWhichIsA("Humanoid")
	if not humanoid then return end
	
	flying = true
	
	local bv = Instance.new("BodyVelocity")
	local bg = Instance.new("BodyGyro")
	bv.MaxForce = Vector3.new(9e4, 9e4, 9e4)
	bg.CFrame = hrp.CFrame
	bg.MaxTorque = Vector3.new(9e4, 9e4, 9e4)
	bg.P = 9e4
	bv.Parent = hrp
	bg.Parent = hrp
	
	for i, child in pairs(character:GetDescendants()) do
		if child:IsA("BasePart") then
			coroutine.wrap(function()
				local con = nil
				con = runservice.Stepped:Connect(function()
					if not flying then
						con:Disconnect()
						child.CanCollide = true
					end
					child.CanCollide = false
				end)
			end)()
		end
	end
	
	local con = nil
	con = runservice.Stepped:Connect(function()
		if not flying then
			con:Disconnect()
			bv:Destroy()
			bg:Destroy()
		end
		
		humanoid.PlatformStand = true
		bv.Velocity = (workspace.Camera.CoordinateFrame.LookVector * ((flycontrol.F - flycontrol.B) * flyspeed)) + (workspace.CurrentCamera.CoordinateFrame.RightVector * ((flycontrol.R - flycontrol.L) * flyspeed)) + (workspace.CurrentCamera.CoordinateFrame.UpVector * ((flycontrol.U - flycontrol.D) * flyspeed))
		bg.CFrame = workspace.Camera.CoordinateFrame
	end)
	
	repeat wait() until not flying
	
	while humanoid.PlatformStand == true do
		humanoid.PlatformStand = false
		task.wait()
	end
end

mouse.KeyDown:Connect(function(key)
	
	if key:lower() == flybutton then
		if flying then
			flying = false
		else
			fly()
		end
	elseif key:lower() == controls.front then
		flycontrol.F = 1
	elseif key:lower() == controls.back then
		flycontrol.B = 1
	elseif key:lower() == controls.right then
		flycontrol.R = 1
	elseif key:lower() == controls.left then
		flycontrol.L = 1
	elseif key:lower() == controls.up then
		flycontrol.U = 1
	elseif key:lower() == controls.down then
		flycontrol.D = 1
	end
end)

mouse.KeyUp:Connect(function(key)
	if key:lower() == controls.front then
		flycontrol.F = 0
	elseif key:lower() == controls.back then
		flycontrol.B = 0
	elseif key:lower() == controls.right then
		flycontrol.R = 0
	elseif key:lower() == controls.left then
		flycontrol.L = 0
	elseif key:lower() == controls.up then
		flycontrol.U = 0
	elseif key:lower() == controls.down then
		flycontrol.D = 0
	end
end)

player.CharacterAdded:Connect(function()
	flying = false
end)
    end
})


