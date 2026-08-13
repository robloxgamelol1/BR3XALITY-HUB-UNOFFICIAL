--[[
    SUPER RING PARTS V8 - ULTIMATE EDITION
    ✨ Individual Tornado Control • Advanced Shapes • Custom Positioning
    🎨 Shape Designer • Multi-Pattern Support • Size Scaling
]]

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local LocalPlayer = Players.LocalPlayer

-- Enhanced Configuration
local config = {
    mode = "Single", -- Single, Multi, Shape, Custom
    shape = "Circle",
    numTornadoes = 3,
    radius = 50,
    height = 100,
    rotationSpeed = 10,
    attractionStrength = 1000,
    shapeSize = 100,
    orbitSpeed = 5,
    individualControl = false,
    autoRotateShape = true,
    rainbowMode = false,
    pulseEffect = false,
    
    -- Individual tornado settings
    tornadoes = {}
}

-- Initialize default tornadoes
for i = 1, 10 do
    config.tornadoes[i] = {
        enabled = i <= 3,
        shape = "Circle",
        radius = 50,
        height = 100,
        speed = 10,
        size = 100,
        offsetX = 0,
        offsetY = 0,
        offsetZ = 0,
        color = Color3.fromRGB(100, 50, 200)
    }
end

-- Save/Load
local function saveConfig()
    local success, err = pcall(function()
        writefile("SuperRingV8.txt", HttpService:JSONEncode(config))
    end)
    if not success then
        warn("Failed to save config:", err)
    end
end

local function loadConfig()
    if isfile and isfile("SuperRingV8.txt") then
        local success, data = pcall(function()
            return HttpService:JSONDecode(readfile("SuperRingV8.txt"))
        end)
        if success and data then
            for k, v in pairs(data) do
                config[k] = v
            end
        end
    end
end

loadConfig()

-- GUI Setup
local GUI = Instance.new("ScreenGui")
GUI.Name = "RingPartsV8"
GUI.ResetOnSpawn = false
GUI.IgnoreGuiInset = true
pcall(function() GUI.Parent = game:GetService("CoreGui") end)
if not GUI.Parent then GUI.Parent = LocalPlayer.PlayerGui end

-- Floating Button
local OpenBtn = Instance.new("TextButton", GUI)
OpenBtn.Size = UDim2.new(0, 70, 0, 70)
OpenBtn.Position = UDim2.new(1, -80, 0.5, -35)
OpenBtn.BackgroundColor3 = Color3.fromRGB(100, 50, 200)
OpenBtn.Text = "🌪️"
OpenBtn.TextSize = 35
OpenBtn.Font = Enum.Font.GothamBold
OpenBtn.TextColor3 = Color3.new(1, 1, 1)
OpenBtn.BorderSizePixel = 0
Instance.new("UICorner", OpenBtn).CornerRadius = UDim.new(1, 0)

local OpenStroke = Instance.new("UIStroke", OpenBtn)
OpenStroke.Color = Color3.new(1, 1, 1)
OpenStroke.Thickness = 3

-- Draggable button
local btnDrag, btnStart, btnPos = false, nil, nil
local btnMoved = false

OpenBtn.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        btnDrag = true
        btnMoved = false
        btnStart = input.Position
        btnPos = OpenBtn.Position
    end
end)

OpenBtn.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        btnDrag = false
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if btnDrag and (input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement) then
        local delta = input.Position - btnStart
        if delta.Magnitude > 5 then
            btnMoved = true
            OpenBtn.Position = UDim2.new(btnPos.X.Scale, btnPos.X.Offset + delta.X, btnPos.Y.Scale, btnPos.Y.Offset + delta.Y)
        end
    end
end)

-- Main Menu
local Menu = Instance.new("Frame", GUI)
Menu.Size = UDim2.new(1, 0, 1, 0)
Menu.BackgroundColor3 = Color3.fromRGB(15, 15, 22)
Menu.BorderSizePixel = 0
Menu.Visible = false

local Header = Instance.new("Frame", Menu)
Header.Size = UDim2.new(1, 0, 0, 70)
Header.BackgroundColor3 = Color3.fromRGB(100, 50, 200)
Header.BorderSizePixel = 0

local Title = Instance.new("TextLabel", Header)
Title.Size = UDim2.new(1, -80, 1, 0)
Title.Position = UDim2.new(0, 20, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "RING PARTS V8 - ULTIMATE EDITION"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.Font = Enum.Font.GothamBlack
Title.TextSize = 18
Title.TextXAlignment = Enum.TextXAlignment.Left

local Close = Instance.new("TextButton", Header)
Close.Size = UDim2.new(0, 60, 0, 60)
Close.Position = UDim2.new(1, -65, 0, 5)
Close.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
Close.Text = "✕"
Close.TextSize = 30
Close.Font = Enum.Font.GothamBold
Close.TextColor3 = Color3.new(1, 1, 1)
Close.BorderSizePixel = 0
Instance.new("UICorner", Close).CornerRadius = UDim.new(0, 12)

local Content = Instance.new("ScrollingFrame", Menu)
Content.Size = UDim2.new(1, -20, 1, -90)
Content.Position = UDim2.new(0, 10, 0, 75)
Content.BackgroundTransparency = 1
Content.BorderSizePixel = 0
Content.ScrollBarThickness = 8
Content.CanvasSize = UDim2.new(0, 0, 0, 0)

local Layout = Instance.new("UIListLayout", Content)
Layout.Padding = UDim.new(0, 12)
Layout.HorizontalAlignment = Enum.HorizontalAlignment.Center

Layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    Content.CanvasSize = UDim2.new(0, 0, 0, Layout.AbsoluteContentSize.Y + 20)
end)

local menuOpen = false

OpenBtn.MouseButton1Click:Connect(function()
    if not btnMoved then
        menuOpen = not menuOpen
        Menu.Visible = menuOpen
        OpenBtn.Text = menuOpen and "" or "🌪️"
    end
    btnMoved = false
end)

Close.MouseButton1Click:Connect(function()
    menuOpen = false
    Menu.Visible = false
    OpenBtn.Text = "🌪️"
end)

-- UI Creation Functions
local function createSection(name)
    local Section = Instance.new("TextLabel", Content)
    Section.Size = UDim2.new(0.95, 0, 0, 40)
    Section.BackgroundTransparency = 1
    Section.Text = name
    Section.TextColor3 = Color3.fromRGB(150, 130, 200)
    Section.Font = Enum.Font.GothamBlack
    Section.TextSize = 18
    Section.TextXAlignment = Enum.TextXAlignment.Left
    
    local Line = Instance.new("Frame", Section)
    Line.Size = UDim2.new(0.3, 0, 0, 3)
    Line.Position = UDim2.new(0, 0, 1, -5)
    Line.BackgroundColor3 = Color3.fromRGB(100, 50, 200)
    Line.BorderSizePixel = 0
    Instance.new("UICorner", Line).CornerRadius = UDim.new(1, 0)
end

local function createToggle(name, setting, callback)
    local Toggle = Instance.new("Frame", Content)
    Toggle.Size = UDim2.new(0.95, 0, 0, 70)
    Toggle.BackgroundColor3 = Color3.fromRGB(22, 20, 32)
    Toggle.BorderSizePixel = 0
    Instance.new("UICorner", Toggle).CornerRadius = UDim.new(0, 12)
    
    local Label = Instance.new("TextLabel", Toggle)
    Label.Size = UDim2.new(1, -90, 1, 0)
    Label.Position = UDim2.new(0, 20, 0, 0)
    Label.BackgroundTransparency = 1
    Label.Text = name
    Label.TextColor3 = Color3.fromRGB(220, 220, 240)
    Label.Font = Enum.Font.GothamBold
    Label.TextSize = 16
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.TextWrapped = true
    
    local Button = Instance.new("TextButton", Toggle)
    Button.Size = UDim2.new(0, 70, 0, 40)
    Button.Position = UDim2.new(1, -80, 0.5, -20)
    Button.BackgroundColor3 = config[setting] and Color3.fromRGB(100, 50, 200) or Color3.fromRGB(40, 38, 50)
    Button.Text = ""
    Button.BorderSizePixel = 0
    Instance.new("UICorner", Button).CornerRadius = UDim.new(1, 0)
    
    local Ind = Instance.new("Frame", Button)
    Ind.Size = UDim2.new(0, 34, 0, 34)
    Ind.Position = config[setting] and UDim2.new(1, -37, 0.5, -17) or UDim2.new(0, 3, 0.5, -17)
    Ind.BackgroundColor3 = Color3.new(1, 1, 1)
    Ind.BorderSizePixel = 0
    Instance.new("UICorner", Ind).CornerRadius = UDim.new(1, 0)
    
    Button.MouseButton1Click:Connect(function()
        config[setting] = not config[setting]
        local col = config[setting] and Color3.fromRGB(100, 50, 200) or Color3.fromRGB(40, 38, 50)
        local pos = config[setting] and UDim2.new(1, -37, 0.5, -17) or UDim2.new(0, 3, 0.5, -17)
        TweenService:Create(Button, TweenInfo.new(0.3), {BackgroundColor3 = col}):Play()
        TweenService:Create(Ind, TweenInfo.new(0.3, Enum.EasingStyle.Back), {Position = pos}):Play()
        if callback then callback(config[setting]) end
        saveConfig()
    end)
    
    return Toggle
end

local function createSlider(name, min, max, setting, callback)
    local Slider = Instance.new("Frame", Content)
    Slider.Size = UDim2.new(0.95, 0, 0, 85)
    Slider.BackgroundColor3 = Color3.fromRGB(22, 20, 32)
    Slider.BorderSizePixel = 0
    Instance.new("UICorner", Slider).CornerRadius = UDim.new(0, 12)
    
    local Label = Instance.new("TextLabel", Slider)
    Label.Size = UDim2.new(1, -30, 0, 35)
    Label.Position = UDim2.new(0, 15, 0, 8)
    Label.BackgroundTransparency = 1
    Label.Text = name .. ": " .. config[setting]
    Label.TextColor3 = Color3.fromRGB(220, 220, 240)
    Label.Font = Enum.Font.GothamBold
    Label.TextSize = 15
    Label.TextXAlignment = Enum.TextXAlignment.Left
    
    local SliderBG = Instance.new("Frame", Slider)
    SliderBG.Size = UDim2.new(0.92, 0, 0, 12)
    SliderBG.Position = UDim2.new(0.04, 0, 1, -25)
    SliderBG.BackgroundColor3 = Color3.fromRGB(35, 33, 45)
    SliderBG.BorderSizePixel = 0
    Instance.new("UICorner", SliderBG).CornerRadius = UDim.new(1, 0)
    
    local Fill = Instance.new("Frame", SliderBG)
    Fill.Size = UDim2.new((config[setting] - min) / (max - min), 0, 1, 0)
    Fill.BackgroundColor3 = Color3.fromRGB(100, 50, 200)
    Fill.BorderSizePixel = 0
    Instance.new("UICorner", Fill).CornerRadius = UDim.new(1, 0)
    
    local SliderBtn = Instance.new("TextButton", SliderBG)
    SliderBtn.Size = UDim2.new(1, 0, 1, 40)
    SliderBtn.Position = UDim2.new(0, 0, 0, -20)
    SliderBtn.BackgroundTransparency = 1
    SliderBtn.Text = ""
    
    local sliding = false
    
    SliderBtn.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
            sliding = true
        end
    end)
    
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
            sliding = false
        end
    end)
    
    RunService.RenderStepped:Connect(function()
        if sliding then
            local mouse = UserInputService:GetMouseLocation()
            local pos = math.clamp((mouse.X - SliderBG.AbsolutePosition.X) / SliderBG.AbsoluteSize.X, 0, 1)
            local value = math.floor(min + (max - min) * pos)
            config[setting] = value
            Label.Text = name .. ": " .. value
            Fill.Size = UDim2.new(pos, 0, 1, 0)
            if callback then callback(value) end
            saveConfig()
        end
    end)
end

local function createDropdown(name, options, setting, callback)
    local Drop = Instance.new("Frame", Content)
    Drop.Size = UDim2.new(0.95, 0, 0, 70)
    Drop.BackgroundColor3 = Color3.fromRGB(22, 20, 32)
    Drop.BorderSizePixel = 0
    Instance.new("UICorner", Drop).CornerRadius = UDim.new(0, 12)
    
    local Label = Instance.new("TextLabel", Drop)
    Label.Size = UDim2.new(1, -20, 0, 30)
    Label.Position = UDim2.new(0, 15, 0, 5)
    Label.BackgroundTransparency = 1
    Label.Text = name
    Label.TextColor3 = Color3.fromRGB(180, 180, 200)
    Label.Font = Enum.Font.GothamBold
    Label.TextSize = 14
    Label.TextXAlignment = Enum.TextXAlignment.Left
    
    local Selector = Instance.new("TextButton", Drop)
    Selector.Size = UDim2.new(0.92, 0, 0, 30)
    Selector.Position = UDim2.new(0.04, 0, 1, -35)
    Selector.BackgroundColor3 = Color3.fromRGB(40, 38, 50)
    Selector.Text = "  " .. config[setting]
    Selector.TextColor3 = Color3.new(1, 1, 1)
    Selector.Font = Enum.Font.Gotham
    Selector.TextSize = 14
    Selector.TextXAlignment = Enum.TextXAlignment.Left
    Selector.BorderSizePixel = 0
    Instance.new("UICorner", Selector).CornerRadius = UDim.new(0, 8)
    
    local OptionsList = Instance.new("Frame", Selector)
    OptionsList.Size = UDim2.new(1, 0, 0, 0)
    OptionsList.Position = UDim2.new(0, 0, 1, 5)
    OptionsList.BackgroundColor3 = Color3.fromRGB(30, 28, 40)
    OptionsList.BorderSizePixel = 0
    OptionsList.Visible = false
    OptionsList.ZIndex = 100
    Instance.new("UICorner", OptionsList).CornerRadius = UDim.new(0, 8)
    
    local OptionsLayout = Instance.new("UIListLayout", OptionsList)
    OptionsLayout.Padding = UDim.new(0, 3)
    
    for _, option in ipairs(options) do
        local OptionBtn = Instance.new("TextButton", OptionsList)
        OptionBtn.Size = UDim2.new(1, -6, 0, 35)
        OptionBtn.BackgroundColor3 = Color3.fromRGB(40, 38, 50)
        OptionBtn.Text = option
        OptionBtn.TextColor3 = Color3.new(1, 1, 1)
        OptionBtn.Font = Enum.Font.Gotham
        OptionBtn.TextSize = 13
        OptionBtn.BorderSizePixel = 0
        OptionBtn.ZIndex = 101
        Instance.new("UICorner", OptionBtn).CornerRadius = UDim.new(0, 6)
        
        OptionBtn.MouseButton1Click:Connect(function()
            config[setting] = option
            Selector.Text = "  " .. option
            OptionsList.Visible = false
            if callback then callback(option) end
            saveConfig()
        end)
    end
    
    OptionsLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        OptionsList.Size = UDim2.new(1, 0, 0, math.min(OptionsLayout.AbsoluteContentSize.Y + 6, 200))
    end)
    
    Selector.MouseButton1Click:Connect(function()
        OptionsList.Visible = not OptionsList.Visible
    end)
end

local function createButton(name, color, callback)
    local Btn = Instance.new("TextButton", Content)
    Btn.Size = UDim2.new(0.95, 0, 0, 60)
    Btn.BackgroundColor3 = color
    Btn.Text = name
    Btn.TextColor3 = Color3.new(1, 1, 1)
    Btn.Font = Enum.Font.GothamBold
    Btn.TextSize = 18
    Btn.BorderSizePixel = 0
    Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 12)
    
    Btn.MouseButton1Click:Connect(function()
        if callback then callback() end
    end)
    
    return Btn
end

-- Build Main UI
createSection("🎮 MODE SELECTION")
createDropdown("Tornado Mode", {"Single", "Multi", "Shape", "Custom"}, "mode")

createSection("✨ VISUAL EFFECTS")
createToggle("Rainbow Mode", "rainbowMode")
createToggle("Pulse Effect", "pulseEffect")
createToggle("Auto-Rotate Shapes", "autoRotateShape")

createSection("🎨 SHAPE DESIGNER")
createDropdown("Shape Type", {
    "Circle", "Square", "Triangle", "Star", "Heart", 
    "Line", "Spiral", "Pentagon", "Hexagon", "Octagon",
    "Wave", "Infinity", "Diamond", "Cross"
}, "shape")
createSlider("Shape Size", 20, 500, "shapeSize")
createSlider("Orbit Speed", 1, 30, "orbitSpeed")

createSection("🌪️ GLOBAL TORNADO SETTINGS")
createSlider("Number of Tornadoes", 1, 10, "numTornadoes")
createSlider("Base Radius", 10, 200, "radius")
createSlider("Base Height", 10, 300, "height")
createSlider("Rotation Speed", 1, 50, "rotationSpeed")
createSlider("Attraction Force", 100, 5000, "attractionStrength")

createSection("⚙️ INDIVIDUAL TORNADO CONTROL")
createToggle("Enable Individual Settings", "individualControl")

-- Individual Tornado Controls
local individualFrame = Instance.new("Frame", Content)
individualFrame.Size = UDim2.new(0.95, 0, 0, 0)
individualFrame.BackgroundTransparency = 1
individualFrame.Visible = config.individualControl

-- Create individual tornado controls
for i = 1, 10 do
    local tornadoSection = Instance.new("Frame", individualFrame)
    tornadoSection.Size = UDim2.new(1, 0, 0, 400)
    tornadoSection.BackgroundColor3 = Color3.fromRGB(18, 16, 28)
    tornadoSection.BorderSizePixel = 0
    Instance.new("UICorner", tornadoSection).CornerRadius = UDim.new(0, 12)
    
    local tornadoLayout = Instance.new("UIListLayout", tornadoSection)
    tornadoLayout.Padding = UDim.new(0, 8)
    tornadoLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    
    -- Tornado header
    local header = Instance.new("TextLabel", tornadoSection)
    header.Size = UDim2.new(0.95, 0, 0, 35)
    header.BackgroundTransparency = 1
    header.Text = "🌪️ Tornado #" .. i
    header.TextColor3 = Color3.fromRGB(150, 130, 200)
    header.Font = Enum.Font.GothamBold
    header.TextSize = 16
    header.TextXAlignment = Enum.TextXAlignment.Left
    
    -- Enable toggle for this tornado
    local enableToggle = Instance.new("Frame", tornadoSection)
    enableToggle.Size = UDim2.new(0.95, 0, 0, 50)
    enableToggle.BackgroundColor3 = Color3.fromRGB(25, 23, 35)
    enableToggle.BorderSizePixel = 0
    Instance.new("UICorner", enableToggle).CornerRadius = UDim.new(0, 8)
    
    local enableLabel = Instance.new("TextLabel", enableToggle)
    enableLabel.Size = UDim2.new(1, -70, 1, 0)
    enableLabel.Position = UDim2.new(0, 15, 0, 0)
    enableLabel.BackgroundTransparency = 1
    enableLabel.Text = "Enabled"
    enableLabel.TextColor3 = Color3.fromRGB(200, 200, 220)
    enableLabel.Font = Enum.Font.Gotham
    enableLabel.TextSize = 14
    enableLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    local enableBtn = Instance.new("TextButton", enableToggle)
    enableBtn.Size = UDim2.new(0, 50, 0, 30)
    enableBtn.Position = UDim2.new(1, -60, 0.5, -15)
    enableBtn.BackgroundColor3 = config.tornadoes[i].enabled and Color3.fromRGB(100, 50, 200) or Color3.fromRGB(40, 38, 50)
    enableBtn.Text = config.tornadoes[i].enabled and "ON" or "OFF"
    enableBtn.TextColor3 = Color3.new(1, 1, 1)
    enableBtn.Font = Enum.Font.GothamBold
    enableBtn.TextSize = 12
    enableBtn.BorderSizePixel = 0
    Instance.new("UICorner", enableBtn).CornerRadius = UDim.new(0, 6)
    
    enableBtn.MouseButton1Click:Connect(function()
        config.tornadoes[i].enabled = not config.tornadoes[i].enabled
        enableBtn.BackgroundColor3 = config.tornadoes[i].enabled and Color3.fromRGB(100, 50, 200) or Color3.fromRGB(40, 38, 50)
        enableBtn.Text = config.tornadoes[i].enabled and "ON" or "OFF"
        saveConfig()
    end)
end

-- Update layout for individual controls
local individualLayout = Instance.new("UIListLayout", individualFrame)
individualLayout.Padding = UDim.new(0, 15)
individualLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

individualLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    individualFrame.Size = UDim2.new(0.95, 0, 0, individualLayout.AbsoluteContentSize.Y)
end)

-- Toggle individual frame visibility
config.individualControl = false
createToggle("Enable Individual Settings", "individualControl", function(enabled)
    individualFrame.Visible = enabled
end)

-- Main Control Button
createSection("⚡ CONTROL")
local ToggleBtn = createButton("START TORNADO", Color3.fromRGB(255, 0, 0), nil)

-- Ring Parts System
if not getgenv().Network then
    getgenv().Network = {
        BaseParts = {},
        Velocity = Vector3.new(14.46262424, 14.46262424, 14.46262424)
    }
    
    local function EnablePartControl()
        LocalPlayer.ReplicationFocus = workspace
        RunService.Heartbeat:Connect(function()
            sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
            for _, Part in pairs(Network.BaseParts) do
                if Part:IsDescendantOf(workspace) then
                    Part.Velocity = Network.Velocity
                end
            end
        end)
    end
    
    EnablePartControl()
end

local parts = {}

local function RetainPart(part)
    if part:IsA("BasePart") and not part.Anchored and part:IsDescendantOf(workspace) then
        if part.Parent == LocalPlayer.Character or part:IsDescendantOf(LocalPlayer.Character) then
            return false
        end
        part.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
        part.CanCollide = false
        return true
    end
    return false
end

local function addPart(part)
    if RetainPart(part) and not table.find(parts, part) then
        table.insert(parts, part)
    end
end

local function removePart(part)
    local index = table.find(parts, part)
    if index then table.remove(parts, index) end
end

for _, part in pairs(workspace:GetDescendants()) do
    addPart(part)
end

workspace.DescendantAdded:Connect(addPart)
workspace.DescendantRemoving:Connect(removePart)

-- Enhanced Shape Functions
local function getShapePoints(shape, count, size)
    local points = {}
    
    if shape == "Circle" then
        for i = 1, count do
            local angle = (i / count) * math.pi * 2
            table.insert(points, Vector3.new(math.cos(angle) * size, 0, math.sin(angle) * size))
        end
        
    elseif shape == "Square" then
        local perSide = math.ceil(count / 4)
        local half = size / 2
        for i = 0, perSide - 1 do
            local t = i / perSide
            table.insert(points, Vector3.new(-half + size * t, 0, -half))
            table.insert(points, Vector3.new(half, 0, -half + size * t))
            table.insert(points, Vector3.new(half - size * t, 0, half))
            table.insert(points, Vector3.new(-half, 0, half - size * t))
        end
        
    elseif shape == "Triangle" then
        for i = 1, 3 do
            local angle = (i / 3) * math.pi * 2 - math.pi / 2
            table.insert(points, Vector3.new(math.cos(angle) * size, 0, math.sin(angle) * size))
        end
        
    elseif shape == "Star" then
        for i = 1, count do
            local angle = (i / count) * math.pi * 2
            local r = (i % 2 == 0) and size or size / 2.5
            table.insert(points, Vector3.new(math.cos(angle) * r, 0, math.sin(angle) * r))
        end
        
    elseif shape == "Heart" then
        for i = 1, count do
            local t = (i / count) * math.pi * 2
            local x = size * (16 * math.sin(t)^3) / 17
            local z = size * (13 * math.cos(t) - 5 * math.cos(2*t) - 2 * math.cos(3*t) - math.cos(4*t)) / 17
            table.insert(points, Vector3.new(x, 0, -z))
        end
        
    elseif shape == "Line" then
        for i = 1, count do
            local t = (i - 1) / (count - 1)
            table.insert(points, Vector3.new(-size/2 + size * t, 0, 0))
        end
        
    elseif shape == "Spiral" then
        for i = 1, count do
            local t = (i / count) * math.pi * 6
            local r = (i / count) * size
            table.insert(points, Vector3.new(math.cos(t) * r, 0, math.sin(t) * r))
        end
        
    elseif shape == "Pentagon" then
        for i = 1, 5 do
            local angle = (i / 5) * math.pi * 2 - math.pi / 2
            table.insert(points, Vector3.new(math.cos(angle) * size, 0, math.sin(angle) * size))
        end
        
    elseif shape == "Hexagon" then
        for i = 1, 6 do
            local angle = (i / 6) * math.pi * 2
            table.insert(points, Vector3.new(math.cos(angle) * size, 0, math.sin(angle) * size))
        end
        
    elseif shape == "Octagon" then
        for i = 1, 8 do
            local angle = (i / 8) * math.pi * 2
            table.insert(points, Vector3.new(math.cos(angle) * size, 0, math.sin(angle) * size))
        end
        
    elseif shape == "Wave" then
        for i = 1, count do
            local t = (i / count) * math.pi * 4
            local x = -size + (2 * size * i / count)
            local z = math.sin(t) * (size / 3)
            table.insert(points, Vector3.new(x, 0, z))
        end
        
    elseif shape == "Infinity" then
        for i = 1, count do
            local t = (i / count) * math.pi * 2
            local scale = size / 3
            local x = scale * math.sin(t) * 2
            local z = scale * math.sin(t) * math.cos(t)
            table.insert(points, Vector3.new(x, 0, z))
        end
        
    elseif shape == "Diamond" then
        for i = 1, 4 do
            local angle = (i / 4) * math.pi * 2 + math.pi / 4
            table.insert(points, Vector3.new(math.cos(angle) * size, 0, math.sin(angle) * size))
        end
        
    elseif shape == "Cross" then
        local half = size / 2
        local third = size / 6
        -- Horizontal bar
        for i = 0, count / 2 do
            local t = i / (count / 2)
            table.insert(points, Vector3.new(-half + size * t, 0, 0))
        end
        -- Vertical bar
        for i = 0, count / 2 do
            local t = i / (count / 2)
            table.insert(points, Vector3.new(0, 0, -half + size * t))
        end
    end
    
    return points
end

-- Main Tornado Logic
local enabled = false
local time = 0

local function applyTornado(part, center, radius, height, rotationSpeed, attraction, pulseValue)
    if not part.Parent or part.Anchored then return end
    
    local pos = part.Position
    local distance = (Vector3.new(pos.X, center.Y, pos.Z) - center).Magnitude
    local angle = math.atan2(pos.Z - center.Z, pos.X - center.X)
    local newAngle = angle + math.rad(rotationSpeed)
    
    -- Apply pulse effect
    local currentRadius = radius
    if config.pulseEffect then
        currentRadius = radius * pulseValue
    end
    
    local targetPos = Vector3.new(
        center.X + math.cos(newAngle) * math.min(currentRadius, distance),
        center.Y + (height * (math.abs(math.sin((pos.Y - center.Y) / height)))),
        center.Z + math.sin(newAngle) * math.min(currentRadius, distance)
    )
    
    part.Velocity = (targetPos - part.Position).unit * attraction
end

RunService.Heartbeat:Connect(function(dt)
    if not enabled then return end
    
    time = time + dt
    local hrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    
    -- Pulse effect value
    local pulseValue = 1 + math.sin(time * 3) * 0.2
    
    if config.mode == "Single" then
        -- Single tornado at player
        local center = hrp.Position
        for _, part in pairs(parts) do
            applyTornado(part, center, config.radius, config.height, config.rotationSpeed, config.attractionStrength, pulseValue)
        end
        
    elseif config.mode == "Multi" then
        -- Multiple tornadoes in circle around player
        for i = 1, config.numTornadoes do
            local orbitAngle = time * config.orbitSpeed + ((i - 1) / config.numTornadoes) * math.pi * 2
            local center = hrp.Position + Vector3.new(
                math.cos(orbitAngle) * config.shapeSize,
                0,
                math.sin(orbitAngle) * config.shapeSize
            )
            
            for _, part in pairs(parts) do
                if part.Parent and not part.Anchored then
                    local distance = (Vector3.new(part.Position.X, center.Y, part.Position.Z) - center).Magnitude
                    
                    if distance < config.radius * 2 then
                        applyTornado(part, center, config.radius, config.height, config.rotationSpeed, config.attractionStrength, pulseValue)
                    end
                end
            end
        end
        
    elseif config.mode == "Shape" then
        -- Tornadoes arranged in shape pattern
        local shapePoints = getShapePoints(config.shape, config.numTornadoes, config.shapeSize)
        local rotationAngle = config.autoRotateShape and (time * config.orbitSpeed * 0.5) or 0
        
        for i, offset in ipairs(shapePoints) do
            -- Rotate the shape
            local rotatedX = offset.X * math.cos(rotationAngle) - offset.Z * math.sin(rotationAngle)
            local rotatedZ = offset.X * math.sin(rotationAngle) + offset.Z * math.cos(rotationAngle)
            
            local center = hrp.Position + Vector3.new(rotatedX, 0, rotatedZ)
            
            for _, part in pairs(parts) do
                if part.Parent and not part.Anchored then
                    local distance = (Vector3.new(part.Position.X, center.Y, part.Position.Z) - center).Magnitude
                    
                    if distance < config.radius * 2 then
                        applyTornado(part, center, config.radius, config.height, config.rotationSpeed, config.attractionStrength, pulseValue)
                    end
                end
            end
        end
        
    elseif config.mode == "Custom" and config.individualControl then
        -- Individual tornado control mode
        for i = 1, config.numTornadoes do
            if config.tornadoes[i] and config.tornadoes[i].enabled then
                local tornado = config.tornadoes[i]
                local center = hrp.Position + Vector3.new(
                    tornado.offsetX or 0,
                    tornado.offsetY or 0,
                    tornado.offsetZ or 0
                )
                
                for _, part in pairs(parts) do
                    if part.Parent and not part.Anchored then
                        local distance = (Vector3.new(part.Position.X, center.Y, part.Position.Z) - center).Magnitude
                        
                        if distance < (tornado.radius or config.radius) * 2 then
                            applyTornado(
                                part,
                                center,
                                tornado.radius or config.radius,
                                tornado.height or config.height,
                                tornado.speed or config.rotationSpeed,
                                config.attractionStrength,
                                pulseValue
                            )
                        end
                    end
                end
            end
        end
    end
end)

-- Toggle Button Handler
ToggleBtn.MouseButton1Click:Connect(function()
    enabled = not enabled
    ToggleBtn.Text = enabled and "STOP TORNADO" or "START TORNADO"
    ToggleBtn.BackgroundColor3 = enabled and Color3.fromRGB(0, 200, 0) or Color3.fromRGB(255, 0, 0)
end)

print("🌪️ Ring Parts V8 Ultimate Edition Loaded!")
print("✨ Features: Shape Designer, Individual Control, Enhanced Effects")
