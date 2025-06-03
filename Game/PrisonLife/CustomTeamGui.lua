local plr = game:GetService("Players").LocalPlayer
if plr.PlayerGui:FindFirstChild("TeamGui") then
	return
end
local HideGui = ...
-- Gui to Lua
-- Version: 3.2

-- Instances:

local TeamGui = Instance.new("ScreenGui")
local TeamFrame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local InmateImage = Instance.new("ImageLabel")
local GuardImage = Instance.new("ImageLabel")
local CriminalImage = Instance.new("ImageLabel")
local InmateButton = Instance.new("TextButton")
local GuardButton = Instance.new("TextButton")
local CriminalButton = Instance.new("TextButton")
local plr = game:GetService("Players").LocalPlayer

--Properties:

TeamGui.Name = "TeamGui"
TeamGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
TeamGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
TeamGui.ResetOnSpawn = false

TeamFrame.Name = "TeamFrame"
TeamFrame.Parent = TeamGui
TeamFrame.AnchorPoint = Vector2.new(0.5, 0.5)
TeamFrame.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
TeamFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeamFrame.BorderSizePixel = 0
TeamFrame.Position = UDim2.new(0.498828262, 0, 0.498792917, 0)
TeamFrame.Size = UDim2.new(0, 369, 0, 191)
TeamFrame.Visible = plr.Team.Name=="Neutral"

TextLabel.Parent = TeamFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 369, 0, 37)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "Select Team"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

InmateImage.Name = "InmateImage"
InmateImage.Parent = TeamFrame
InmateImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InmateImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
InmateImage.BorderSizePixel = 0
InmateImage.Position = UDim2.new(0.363143623, 0, 0.235602096, 0)
InmateImage.Size = UDim2.new(0, 100, 0, 100)
InmateImage.Image = "http://www.roblox.com/asset/?id=132562674956148"

GuardImage.Name = "GuardImage"
GuardImage.Parent = TeamFrame
GuardImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GuardImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
GuardImage.BorderSizePixel = 0
GuardImage.Position = UDim2.new(0.680216789, 0, 0.235602096, 0)
GuardImage.Size = UDim2.new(0, 100, 0, 100)
GuardImage.Image = "http://www.roblox.com/asset/?id=93011832878230"

CriminalImage.Name = "CriminalImage"
CriminalImage.Parent = TeamFrame
CriminalImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CriminalImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
CriminalImage.BorderSizePixel = 0
CriminalImage.Position = UDim2.new(0.0460704602, 0, 0.235602096, 0)
CriminalImage.Size = UDim2.new(0, 100, 0, 100)
CriminalImage.Image = "http://www.roblox.com/asset/?id=84857832998257"

InmateButton.Name = "InmateButton"
InmateButton.Parent = TeamFrame
InmateButton.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
InmateButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
InmateButton.BorderSizePixel = 0
InmateButton.Position = UDim2.new(0.363143623, 0, 0.806282699, 0)
InmateButton.Size = UDim2.new(0, 100, 0, 27)
InmateButton.Font = Enum.Font.FredokaOne
InmateButton.Text = "INMATES"
InmateButton.TextColor3 = Color3.fromRGB(255, 255, 255)
InmateButton.TextScaled = true
InmateButton.TextSize = 14.000
InmateButton.TextWrapped = true

GuardButton.Name = "GuardButton"
GuardButton.Parent = TeamFrame
GuardButton.BackgroundColor3 = Color3.fromRGB(0, 17, 255)
GuardButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
GuardButton.BorderSizePixel = 0
GuardButton.Position = UDim2.new(0.680216789, 0, 0.806282699, 0)
GuardButton.Size = UDim2.new(0, 100, 0, 27)
GuardButton.Font = Enum.Font.FredokaOne
GuardButton.Text = "GUARDS"
GuardButton.TextColor3 = Color3.fromRGB(255, 255, 255)
GuardButton.TextScaled = true
GuardButton.TextSize = 14.000
GuardButton.TextWrapped = true

CriminalButton.Name = "CriminalButton"
CriminalButton.Parent = TeamFrame
CriminalButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CriminalButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CriminalButton.BorderSizePixel = 0
CriminalButton.Position = UDim2.new(0.0460704602, 0, 0.806282699, 0)
CriminalButton.Size = UDim2.new(0, 100, 0, 27)
CriminalButton.Font = Enum.Font.FredokaOne
CriminalButton.Text = "CRIMINALS"
CriminalButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CriminalButton.TextScaled = true
CriminalButton.TextSize = 14.000
CriminalButton.TextWrapped = true

GuardButton.MouseButton1Click:Connect(function()
	workspace.Remote.TeamEvent:FireServer("Bright blue")
end)
InmateButton.MouseButton1Click:Connect(function()
	workspace.Remote.TeamEvent:FireServer("Bright orange")
end)
CriminalButton.MouseButton1Click:Connect(function()
	if #game:GetService("Teams").Guards:GetPlayers()>7 then
		workspace.Remote.TeamEvent:FireServer("Bright orange")
	end
	workspace.Remote.TeamEvent:FireServer("Bright blue")
	local RS = game:GetService("RunService").RenderStepped
	repeat RS:Wait()
		pcall(function()
			plr.Character:PivotTo(workspace["Criminals Spawn"].SpawnLocation:GetPivot())
		end)
	until plr.Team.Name=="Really red"
end)
plr.CharacterAdded:Connect(function()
	if plr.Team.Name=="Neutral" then
		TeamFrame.Visible = true
		HideGui()
	else
		TeamFrame.Visible = false
	end
end)
if plr.Team.Name=="Neutral" then
	HideGui()
end
