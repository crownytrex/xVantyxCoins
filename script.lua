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
    Title = "Main",
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

local Button = Tab:Button({
    Title = "Lpc sell remote spam",
    Desc = "MUST BE IN HUB",
    Locked = false,
    Callback = function()
        -- Using rpsy sell 1 large pineapple crate to dom and find the remote that gives you the coins. (Replace this text with the remote from rspy)
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
