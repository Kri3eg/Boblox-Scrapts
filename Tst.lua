editado2

local JuniorGamer = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local INVIS = Instance.new("TextButton")
local IY = Instance.new("TextButton")
local SYSTEMBROKEN = Instance.new("TextButton")
local F3X = Instance.new("TextButton")

--Properties:

JuniorGamer.Name = "JuniorGamer"
JuniorGamer.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

ImageButton.Parent = JuniorGamer
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0, 0, 0.195121944, 0)
ImageButton.Size = UDim2.new(0, 43, 0, 43)
ImageButton.Image = "rbxassetid://5650881577"

UICorner.CornerRadius = UDim.new(0.200000003, 8)
UICorner.Parent = ImageButton

Frame.Parent = JuniorGamer
Frame.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.31908831, 0, 0.101626016, 0)
Frame.Size = UDim2.new(0, 602, 0, 366)
Frame.Visible = false

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(134, 134, 134)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 601, 0, 25)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "NIGGA HUB 2024"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 0.850
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0.0683060139, 0)
ScrollingFrame.Size = UDim2.new(0, 601, 0, 341)

INVIS.Name = "INVIS"
INVIS.Parent = ScrollingFrame
INVIS.BackgroundColor3 = Color3.fromRGB(134, 134, 134)
INVIS.BorderColor3 = Color3.fromRGB(0, 0, 0)
INVIS.BorderSizePixel = 0
INVIS.Position = UDim2.new(0.0419161692, 0, 0.153028682, 0)
INVIS.Size = UDim2.new(0, 152, 0, 34)
INVIS.Font = Enum.Font.SourceSans
INVIS.Text = "FE INVISIBLE"
INVIS.TextColor3 = Color3.fromRGB(255, 255, 255)
INVIS.TextScaled = true
INVIS.TextSize = 14.000
INVIS.TextWrapped = true

IY.Name = "IY"
IY.Parent = ScrollingFrame
IY.BackgroundColor3 = Color3.fromRGB(134, 134, 134)
IY.BorderColor3 = Color3.fromRGB(0, 0, 0)
IY.BorderSizePixel = 0
IY.Position = UDim2.new(0.0419161692, 0, 0.0215827338, 0)
IY.Size = UDim2.new(0, 152, 0, 34)
IY.Font = Enum.Font.SourceSans
IY.Text = "IY"
IY.TextColor3 = Color3.fromRGB(255, 255, 255)
IY.TextScaled = true
IY.TextSize = 14.000
IY.TextWrapped = true

SYSTEMBROKEN.Name = "SYSTEMBROKEN"
SYSTEMBROKEN.Parent = ScrollingFrame
SYSTEMBROKEN.BackgroundColor3 = Color3.fromRGB(134, 134, 134)
SYSTEMBROKEN.BorderColor3 = Color3.fromRGB(0, 0, 0)
SYSTEMBROKEN.BorderSizePixel = 0
SYSTEMBROKEN.Position = UDim2.new(0.0419161692, 0, 0.0871004611, 0)
SYSTEMBROKEN.Size = UDim2.new(0, 152, 0, 34)
SYSTEMBROKEN.Font = Enum.Font.SourceSans
SYSTEMBROKEN.Text = "FE SYSTEM BROKEN"
SYSTEMBROKEN.TextColor3 = Color3.fromRGB(255, 255, 255)
SYSTEMBROKEN.TextScaled = true
SYSTEMBROKEN.TextSize = 14.000
SYSTEMBROKEN.TextWrapped = true

F3X.Name = "F3X"
F3X.Parent = ScrollingFrame
F3X.BackgroundColor3 = Color3.fromRGB(134, 134, 134)
F3X.BorderColor3 = Color3.fromRGB(0, 0, 0)
F3X.BorderSizePixel = 0
F3X.Position = UDim2.new(0.313130856, 0, 0.0199371297, 0)
F3X.Size = UDim2.new(0, 152, 0, 34)
F3X.Font = Enum.Font.SourceSans
F3X.Text = "F3X"
F3X.TextColor3 = Color3.fromRGB(255, 255, 255)
F3X.TextScaled = true
F3X.TextSize = 14.000
F3X.TextWrapped = true

-- Scripts:

local function NFOHS_fake_script() -- ImageButton.LocalScript 
	local script = Instance.new('LocalScript', ImageButton)

	local button = script.Parent
	local frame = script.Parent.Parent.Frame
	local gui = script.Parent.Parent.Parent.JuniorGamer
	
	button.MouseButton1Click:Connect(function()
		if frame.Visible == true then
			frame.Visible = false
		else
			frame.Visible = true
		end
	end)
end
coroutine.wrap(NFOHS_fake_script)()
local function UNTCD_fake_script() -- Frame.Dragify 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(UNTCD_fake_script)()
local function OLXYLQ_fake_script() -- INVIS.LocalScript 
	local script = Instance.new('LocalScript', INVIS)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://pastebin.com/raw/c3vgfjhn"))()
	end)
end
coroutine.wrap(OLXYLQ_fake_script)()
local function MAAU_fake_script() -- IY.LocalScript 
	local script = Instance.new('LocalScript', IY)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
	end)
end
coroutine.wrap(MAAU_fake_script)()
local function FKIX_fake_script() -- SYSTEMBROKEN.LocalScript 
	local script = Instance.new('LocalScript', SYSTEMBROKEN)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/script"))()
	end)
end
coroutine.wrap(FKIX_fake_script)()
local function VBBD_fake_script() -- F3X.LocalScript 
	local script = Instance.new('LocalScript', F3X)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
		loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
	end)
end
coroutine.wrap(VBBD_fake_script)()
