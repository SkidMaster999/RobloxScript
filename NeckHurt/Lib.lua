--GUI made by SkidMaster, Feel free to use
local NGui = Instance.new("ScreenGui")
local NFrame = Instance.new("Frame")
local NLabel = Instance.new("TextLabel")
local CloseButton = Instance.new("ImageButton")
local ScriptsLabel = Instance.new("TextButton")
local MiscLabel = Instance.new("TextButton")
local CmdsLabel = Instance.new("TextButton")
local outlineF = Instance.new("Frame")
local ScriptsFrame = Instance.new("Frame")
local gameSearch = Instance.new("TextBox")
local outlineSF = Instance.new("Frame")
local scriptsSF = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local CmdsFrame = Instance.new("Frame")
local cmdHandler = Instance.new("TextBox")
local outlineCF = Instance.new("Frame")
local cmdsSF = Instance.new("ScrollingFrame")
local UIListLayout2 = Instance.new("UIListLayout")
local miscFrame = Instance.new("Frame")
local miscSF = Instance.new("ScrollingFrame")
local UIListLayout3 = Instance.new("UIListLayout")
local CmdBar3 = Instance.new("TextBox")

NGui.Name = "NGui"
NGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
NGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

NFrame.Name = "NFrame"
NFrame.Parent = NGui
NFrame.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
NFrame.BorderColor3 = Color3.fromRGB(255, 0, 0)
NFrame.BorderSizePixel = 3
NFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
NFrame.AnchorPoint = Vector2.new(0.5, 0.5)
NFrame.Size = UDim2.new(0, 388, 0, 232)

NLabel.Name = "NLabel"
NLabel.Parent = NFrame
NLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
NLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
NLabel.BorderSizePixel = 0
NLabel.Size = UDim2.new(0, 388, 0, 30)
NLabel.Font = Enum.Font.FredokaOne
NLabel.Text = "NeckHurt Hub"
NLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
NLabel.TextSize = 22.000
NLabel.TextWrapped = true

CloseButton.Name = "CloseButton"
CloseButton.Parent = NFrame
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.BorderSizePixel = 0
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Image = "rbxassetid://132261474823036"

ScriptsLabel.Name = "ScriptsLabel"
ScriptsLabel.Parent = NFrame
ScriptsLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScriptsLabel.BorderColor3 = Color3.fromRGB(255, 0, 0)
ScriptsLabel.BorderSizePixel = 2
ScriptsLabel.Position = UDim2.new(0.0386597924, 0, 0.163793102, 0)
ScriptsLabel.Size = UDim2.new(0, 112, 0, 20)
ScriptsLabel.Font = Enum.Font.Nunito
ScriptsLabel.Text = "SCRIPTS"
ScriptsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptsLabel.TextScaled = true
ScriptsLabel.TextSize = 14.000
ScriptsLabel.TextWrapped = true

MiscLabel.Name = "MiscLabel"
MiscLabel.Parent = NFrame
MiscLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MiscLabel.BorderColor3 = Color3.fromRGB(255, 0, 0)
MiscLabel.BorderSizePixel = 0
MiscLabel.Position = UDim2.new(0.672680438, 0, 0.163793102, 0)
MiscLabel.Size = UDim2.new(0, 112, 0, 20)
MiscLabel.Font = Enum.Font.Nunito
MiscLabel.Text = "MISC"
MiscLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
MiscLabel.TextScaled = true
MiscLabel.TextSize = 14.000
MiscLabel.TextWrapped = true

CmdsLabel.Name = "CmdsLabel"
CmdsLabel.Parent = NFrame
CmdsLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CmdsLabel.BorderColor3 = Color3.fromRGB(255, 0, 0)
CmdsLabel.BorderSizePixel = 0
CmdsLabel.Position = UDim2.new(0.355670094, 0, 0.163793102, 0)
CmdsLabel.Size = UDim2.new(0, 112, 0, 20)
CmdsLabel.Font = Enum.Font.Nunito
CmdsLabel.Text = "CMDS"
CmdsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
CmdsLabel.TextScaled = true
CmdsLabel.TextSize = 14.000
CmdsLabel.TextWrapped = true

outlineF.Name = "outlineF"
outlineF.Parent = NFrame
outlineF.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
outlineF.BorderColor3 = Color3.fromRGB(0, 0, 0)
outlineF.BorderSizePixel = 0
outlineF.Position = UDim2.new(0, 0, 0.284482747, 0)
outlineF.Size = UDim2.new(0, 388, 0, 3)

ScriptsFrame.Name = "ScriptsFrame"
ScriptsFrame.Parent = NFrame
ScriptsFrame.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
ScriptsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptsFrame.BorderSizePixel = 0
ScriptsFrame.Position = UDim2.new(0, 0, 0.297413796, 0)
ScriptsFrame.Size = UDim2.new(0, 388, 0, 163)

gameSearch.Name = "gameSearch"
gameSearch.Parent = ScriptsFrame
gameSearch.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
gameSearch.BorderColor3 = Color3.fromRGB(0, 0, 0)
gameSearch.BorderSizePixel = 0
gameSearch.Position = UDim2.new(0, 0, 0.809815943, 0)
gameSearch.Size = UDim2.new(0, 388, 0, 31)
gameSearch.Font = Enum.Font.SourceSans
gameSearch.Text = ""
gameSearch.PlaceholderText = "Search Games"
gameSearch.TextColor3 = Color3.fromRGB(255, 255, 255)
gameSearch.TextScaled = true
gameSearch.TextSize = 25.000
gameSearch.TextWrapped = true

outlineSF.Name = "outlineSF"
outlineSF.Parent = ScriptsFrame
outlineSF.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
outlineSF.BorderColor3 = Color3.fromRGB(0, 0, 0)
outlineSF.BorderSizePixel = 0
outlineSF.Position = UDim2.new(0, 0, 0.791411042, 0)
outlineSF.Size = UDim2.new(0, 388, 0, 3)

scriptsSF.Name = "scriptsSF"
scriptsSF.Parent = ScriptsFrame
scriptsSF.Active = true
scriptsSF.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
scriptsSF.BorderColor3 = Color3.fromRGB(0, 0, 0)
scriptsSF.BorderSizePixel = 0
scriptsSF.Size = UDim2.new(0, 388, 0, 129)
scriptsSF.AutomaticCanvasSize = Enum.AutomaticSize.Y
scriptsSF.ScrollingDirection = Enum.ScrollingDirection.Y

UIListLayout.Parent = scriptsSF
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

CmdsFrame.Name = "CmdsFrame"
CmdsFrame.Parent = NFrame
CmdsFrame.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
CmdsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
CmdsFrame.BorderSizePixel = 0
CmdsFrame.Position = UDim2.new(0, 0, 0.297413796, 0)
CmdsFrame.Size = UDim2.new(0, 388, 0, 163)
CmdsFrame.Visible = false

cmdHandler.Name = "cmdHandler"
cmdHandler.Parent = CmdsFrame
cmdHandler.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
cmdHandler.BorderColor3 = Color3.fromRGB(0, 0, 0)
cmdHandler.BorderSizePixel = 0
cmdHandler.Position = UDim2.new(0, 0, 0.809815943, 0)
cmdHandler.Size = UDim2.new(0, 388, 0, 31)
cmdHandler.Font = Enum.Font.SourceSans
cmdHandler.Text = ""
cmdHandler.PlaceholderText = "Search / Execute"
cmdHandler.TextColor3 = Color3.fromRGB(255, 255, 255)
cmdHandler.TextScaled = true
cmdHandler.TextSize = 25.000
cmdHandler.TextWrapped = true

outlineCF.Name = "outlineCF"
outlineCF.Parent = CmdsFrame
outlineCF.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
outlineCF.BorderColor3 = Color3.fromRGB(0, 0, 0)
outlineCF.BorderSizePixel = 0
outlineCF.Position = UDim2.new(0, 0, 0.791411042, 0)
outlineCF.Size = UDim2.new(0, 388, 0, 3)

cmdsSF.Name = "cmdsSF"
cmdsSF.Parent = CmdsFrame
cmdsSF.Active = true
cmdsSF.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
cmdsSF.BorderColor3 = Color3.fromRGB(0, 0, 0)
cmdsSF.BorderSizePixel = 0
cmdsSF.Size = UDim2.new(0, 388, 0, 129)
cmdsSF.AutomaticCanvasSize = Enum.AutomaticSize.Y
cmdsSF.ScrollingDirection = Enum.ScrollingDirection.Y

UIListLayout2.Parent = cmdsSF
UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder

miscFrame.Name = "miscFrame"
miscFrame.Parent = NFrame
miscFrame.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
miscFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
miscFrame.BorderSizePixel = 0
miscFrame.Position = UDim2.new(0, 0, 0.297413796, 0)
miscFrame.Size = UDim2.new(0, 388, 0, 163)
miscFrame.Visible = false

miscSF.Name = "miscSF"
miscSF.Parent = miscFrame
miscSF.Active = true
miscSF.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
miscSF.BorderColor3 = Color3.fromRGB(0, 0, 0)
miscSF.BorderSizePixel = 0
miscSF.Size = UDim2.new(0, 388, 0, 163)
miscSF.AutomaticCanvasSize = Enum.AutomaticSize.Y
miscSF.ScrollingDirection = Enum.ScrollingDirection.Y

UIListLayout3.Parent = miscSF
UIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder

CmdBar3.Parent = NGui
CmdBar3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CmdBar3.Transparency = 0.4
CmdBar3.Size = UDim2.new(1, 0, 0, 50)
CmdBar3.Font = Enum.Font.SourceSans
CmdBar3.PlaceholderText = "Command Bar"
CmdBar3.TextColor3 = Color3.fromRGB(255, 255, 255)
CmdBar3.TextSize = 30.000
CmdBar3.Position = UDim2.new(-1.5,0,0.5,0)
CmdBar3.ZIndex = 1000

--GUI Functions
local Temp = {}
local Gui = {}
Gui.Drag = function(frame)
	local dragging,dragStartPos,startPos,primaryInput
	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true; dragStartPos = input.Position; startPos = frame.Position
			local tm;tm=input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging=false;tm:Disconnect()
				end
			end)
		end
	end);frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			primaryInput = input
		end
	end);game:GetService("UserInputService").InputChanged:Connect(function(input)
		if dragging and input == primaryInput and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			local delta=input.Position-dragStartPos;frame.Position=UDim2.new(startPos.X.Scale,startPos.X.Offset+delta.X,startPos.Y.Scale,startPos.Y.Offset+delta.Y)
		end
	end)
end
Gui.Tween = function(f,t,p)
	game:GetService("TweenService"):Create(f,TweenInfo.new(t,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0),{Position=p}):Play()
end
Gui.BarNotif = function(ms,dt)
	task.spawn(function()
		local Announcement = Instance.new("TextLabel")
		Announcement.Name = "Announcement"
		Announcement.Parent = NGui
		Announcement.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Announcement.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Announcement.BorderSizePixel = 0
		Announcement.Size = UDim2.new(1, 0, 0, 26)
		Announcement.Font = Enum.Font.Nunito
		Announcement.TextColor3 = Color3.fromRGB(255, 255, 255)
		Announcement.TextScaled = true
		Announcement.Text = ms
		Announcement.TextWrapped = true
		Announcement.Position = UDim2.new(1,0,0,0)
		Gui.Tween(Announcement,0.5,UDim2.new(0,0,0,0))
		wait(dt or 5)
		Gui.Tween(Announcement,0.5,UDim2.new(-1,0,0,0))
		wait(0.5)
		Announcement:Destroy()
	end)
end
Gui.Notify = function(Title,Desc,Timer)
	Timer = Timer or 3
	task.spawn(function()
		repeat task.wait() until not Temp.NotifyD
		Temp.NotifyD = true
		for i,v in next,NGui:GetChildren() do
			if v.Name=="NotifFrame" then
				local T = v:FindFirstChild("TimerT") and v:FindFirstChild("TimerT").Text
				if T and (-tonumber(T))>0 then
					local vp = v.Position
					Gui.Tween(v,0.4,UDim2.new(vp.X.Scale,vp.X.Offset,vp.Y.Scale,vp.Y.Offset-120))
				end
			end
		end
		local NotifFrame = Instance.new("Frame")
		local Tittle = Instance.new("TextLabel")
		local CloseD = Instance.new("ImageButton")
		local TextN = Instance.new("TextLabel")
		local TimerT = Instance.new("TextLabel")

		NotifFrame.Name = "NotifFrame"
		NotifFrame.Parent = NGui
		NotifFrame.AnchorPoint = Vector2.new(1, 1)
		NotifFrame.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
		NotifFrame.BorderColor3 = Color3.fromRGB(255, 0, 0)
		NotifFrame.BorderSizePixel = 2
		NotifFrame.Position = UDim2.new(2, 0, 0.980000019, 0)
		NotifFrame.Size = UDim2.new(0, 236, 0, 109)

		Tittle.Name = "Tittle"
		Tittle.Parent = NotifFrame
		Tittle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		Tittle.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Tittle.BorderSizePixel = 0
		Tittle.Size = UDim2.new(0, 236, 0, 22)
		Tittle.Font = Enum.Font.Nunito
		Tittle.Text = Title
		Tittle.TextColor3 = Color3.fromRGB(255, 255, 255)
		Tittle.TextScaled = true
		Tittle.TextSize = 14.000
		Tittle.TextWrapped = true

		CloseD.Name = "CloseD"
		CloseD.Parent = NotifFrame
		CloseD.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		CloseD.BorderColor3 = Color3.fromRGB(0, 0, 0)
		CloseD.BorderSizePixel = 0
		CloseD.Position = UDim2.new(0.898305058, 0, 0, 0)
		CloseD.Size = UDim2.new(0, 24, 0, 22)
		CloseD.Image = "rbxassetid://14021022848"

		TextN.Name = "TextN"
		TextN.Parent = NotifFrame
		TextN.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
		TextN.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TextN.BorderSizePixel = 0
		TextN.Position = UDim2.new(0.0508474559, 0, 0.284403682, 0)
		TextN.Size = UDim2.new(0, 213, 0, 69)
		TextN.Font = Enum.Font.Nunito
		TextN.Text = Desc
		TextN.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextN.TextScaled = true
		TextN.TextSize = 14.000
		TextN.TextWrapped = true

		TimerT.Name = "TimerT"
		TimerT.Parent = NotifFrame
		TimerT.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		TimerT.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TimerT.BorderSizePixel = 0
		TimerT.Size = UDim2.new(0, 22, 0, 20)
		TimerT.Font = Enum.Font.FredokaOne
		TimerT.Text = Timer
		TimerT.TextColor3 = Color3.fromRGB(255, 255, 255)
		TimerT.TextScaled = true
		TimerT.TextSize = 14.000
		TimerT.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
		TimerT.TextWrapped = true
		Gui.Tween(NotifFrame,0.4,UDim2.new(0.99000001, 0, 0.980000019, 0))
		task.delay(0.4,function()
			Temp.NotifyD = nil
		end)
		local StartT = tick()+Timer
		local C=CloseD.MouseButton1Click:Connect(function()
			StartT = StartT-Timer
		end)
		repeat task.wait()
			TimerT.Text = math.floor(tick()-StartT)
		until tick()-StartT>=0
		TimerT.Text = "0"
		local fp = NotifFrame.Position
		Gui.Tween(NotifFrame,0.7,UDim2.new(2,fp.X.Offset,fp.Y.Scale,fp.Y.Offset))
		wait(0.7)
		C:Disconnect()
		NotifFrame:Destroy()
	end)
end
Gui.AddScript = function(Names,CallbackF)
	local SF = Instance.new("Frame")
	local GN = Instance.new("TextLabel")
	local EX = Instance.new("ImageButton")

	SF.Name = "SF"
	SF.Parent = scriptsSF
	SF.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
	SF.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SF.BorderSizePixel = 0
	SF.Size = UDim2.new(0, 388, 0, 33)

	GN.Name = "GN"
	GN.Parent = SF
	GN.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	GN.BorderColor3 = Color3.fromRGB(0, 0, 0)
	GN.BorderSizePixel = 0
	GN.Position = UDim2.new(0.0386597551, 0, 0.157894716, 0)
	GN.Size = UDim2.new(0, 330, 0, 25)
	GN.Font = Enum.Font.SourceSans
	GN.Text = Names
	GN.TextColor3 = Color3.fromRGB(255, 255, 255)
	GN.TextScaled = true
	GN.TextSize = 14.000
	GN.TextWrapped = true

	EX.Name = "EX"
	EX.Parent = SF
	EX.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	EX.BorderColor3 = Color3.fromRGB(0, 0, 0)
	EX.BorderSizePixel = 0
	EX.Position = UDim2.new(0.879206717, 0, 0.157999679, 0)
	EX.Size = UDim2.new(0, 31, 0, 25)
	EX.Image = "rbxassetid://5173558738"
	EX.MouseButton1Click:Connect(function()
		local s,e=pcall(function()
			Gui.BarNotif("Executing...",2)
			CallbackF()
		end);if not s then
			Gui.Notify("Callback Error!","An error occured while executing script")
		end
	end)
end
Gui.AddCmds = function(Name,Desc)
	local CMF = Instance.new("Frame")
	local CN = Instance.new("TextLabel")

	CMF.Name = "CMF"
	CMF.Parent = cmdsSF
	CMF.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
	CMF.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CMF.BorderSizePixel = 0
	CMF.Size = UDim2.new(0, 388, 0, 33)

	CN.Name = "CN"
	CN.Parent = CMF
	CN.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	CN.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CN.BorderSizePixel = 0
	CN.Position = UDim2.new(0.0386597924, 0, 0.157894716, 0)
	CN.Size = UDim2.new(0, 358, 0, 25)
	CN.Font = Enum.Font.SourceSans
	CN.Text = Name
	CN.TextColor3 = Color3.fromRGB(255, 255, 255)
	CN.TextScaled = true
	CN.TextSize = 14.000
	CN.TextWrapped = true

	CN.MouseEnter:Connect(function()
		cmdHandler.PlaceholderText = Desc
	end)
	CN.MouseLeave:Connect(function()
		cmdHandler.PlaceholderText = "Search / Execute"
	end)
end
Gui.AddMisc = function(Name,Desc,Callbacka,Tog)
	if Tog~=nil then
		local ToggleF = Instance.new("Frame")
		local TN = Instance.new("TextLabel")
		local TB = Instance.new("ImageButton")
		local TD = Instance.new("TextLabel")
		ToggleF.Name = "ToggleF"
		ToggleF.Parent = miscSF
		ToggleF.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
		ToggleF.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ToggleF.BorderSizePixel = 0
		ToggleF.Size = UDim2.new(0, 388, 0, 55)

		TN.Name = "TN"
		TN.Parent = ToggleF
		TN.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		TN.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TN.BorderSizePixel = 0
		TN.Position = UDim2.new(0.0386597924, 0, 0.109090909, 0)
		TN.Size = UDim2.new(0, 328, 0, 18)
		TN.Font = Enum.Font.SourceSans
		TN.Text = "   "..Name
		TN.TextColor3 = Color3.fromRGB(255, 255, 255)
		TN.TextScaled = true
		TN.TextSize = 14.000
		TN.TextWrapped = true
		TN.TextXAlignment = Enum.TextXAlignment.Left

		TB.Name = "TB"
		TB.Parent = ToggleF
		TB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TB.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TB.BorderSizePixel = 0
		TB.Position = UDim2.new(0.884361029, 0, 0.109363906, 0)
		TB.Size = UDim2.new(0, 29, 0, 47)
		TB.Image = Tog and "rbxassetid://7435314787" or "rbxassetid://14033250834"

		TD.Name = "TD"
		TD.Parent = ToggleF
		TD.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
		TD.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TD.BorderMode = Enum.BorderMode.Inset
		TD.Position = UDim2.new(0.0390000492, 0, 0.436363637, 0)
		TD.Size = UDim2.new(0, 328, 0, 29)
		TD.Font = Enum.Font.SourceSans
		TD.Text = Desc
		TD.TextColor3 = Color3.fromRGB(255, 255, 255)
		TD.TextScaled = true
		TD.TextSize = 14.000
		TD.TextWrapped = true
		TB.MouseButton1Click:Connect(function()
			TB.Image = Callbacka() and "rbxassetid://7435314787" or "rbxassetid://14033250834"
		end)
	else
		local BoxF = Instance.new("Frame")
		local BN = Instance.new("TextLabel")
		local BT = Instance.new("TextBox")
		BoxF.Name = "BoxF"
		BoxF.Parent = miscSF
		BoxF.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
		BoxF.BorderColor3 = Color3.fromRGB(0, 0, 0)
		BoxF.BorderSizePixel = 0
		BoxF.Size = UDim2.new(0, 388, 0, 55)

		BN.Name = "BN"
		BN.Parent = BoxF
		BN.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		BN.BorderColor3 = Color3.fromRGB(0, 0, 0)
		BN.BorderSizePixel = 0
		BN.Position = UDim2.new(0.0386597924, 0, 0.127272725, 0)
		BN.Size = UDim2.new(0, 358, 0, 18)
		BN.Font = Enum.Font.SourceSans
		BN.Text = "   WalkSpeed"
		BN.TextColor3 = Color3.fromRGB(255, 255, 255)
		BN.TextScaled = true
		BN.TextSize = 14.000
		BN.TextWrapped = true
		BN.TextXAlignment = Enum.TextXAlignment.Left

		BT.Name = "BT"
		BT.Parent = BoxF
		BT.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
		BT.BorderColor3 = Color3.fromRGB(0, 0, 0)
		BT.BorderMode = Enum.BorderMode.Inset
		BT.Position = UDim2.new(0.0390000083, 0, 0.454000026, 0)
		BT.Size = UDim2.new(0, 358, 0, 30)
		BT.Font = Enum.Font.SourceSans
		BT.Text = ""
		BT.PlaceholderText = Desc
		BT.TextColor3 = Color3.fromRGB(255, 255, 255)
		BT.TextScaled = true
		BT.TextSize = 24.000
		BT.TextWrapped = true
		BT.FocusLost:Connect(function()
			Callbacka(BT.Text)
		end)
	end
end
Gui.DestroyGui = function()
	NGui:Destroy()
end
--GUI Connections
ScriptsLabel.MouseButton1Click:Connect(function()
	ScriptsFrame.Visible = true
	CmdsFrame.Visible = false
	miscFrame.Visible = false
	ScriptsLabel.BorderSizePixel = 2
	CmdsLabel.BorderSizePixel = 0
	MiscLabel.BorderSizePixel = 0
end)
CmdsLabel.MouseButton1Click:Connect(function()
	ScriptsFrame.Visible = false
	CmdsFrame.Visible = true
	miscFrame.Visible = false
	CmdsLabel.BorderSizePixel = 2
	ScriptsLabel.BorderSizePixel = 0
	MiscLabel.BorderSizePixel = 0
end)
MiscLabel.MouseButton1Click:Connect(function()
	ScriptsFrame.Visible = false
	CmdsFrame.Visible = false
	miscFrame.Visible = true
	CmdsLabel.BorderSizePixel = 0
	ScriptsLabel.BorderSizePixel = 0
	MiscLabel.BorderSizePixel = 2
end)
CmdBar3.Focused:Connect(function()
	Gui.Tween(CmdBar3,0.3,UDim2.new(0,0,0.5,0))
end)
CmdBar3.FocusLost:Connect(function()
	Gui.Tween(CmdBar3,0.4,UDim2.new(-1.5,0,0.5,0))
end)
CloseButton.MouseButton1Click:Connect(function()
	local p = NFrame.Position
	Gui.Tween(NFrame,0.7,UDim2.new(-1.5,p.X.Offset,p.Y.Scale,p.Y.Offset))
end)
local OpenGUI = Instance.new("ImageButton")
OpenGUI.Name = "OpenGUI"
OpenGUI.Parent = NGui
OpenGUI.AnchorPoint = Vector2.new(0.5, 0.5)
OpenGUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OpenGUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
OpenGUI.BorderSizePixel = 0
OpenGUI.Position = UDim2.new(0, 30, 0.5, 0)
OpenGUI.Size = UDim2.new(0, 40, 0, 40)
OpenGUI.Image = "rbxassetid://16249399796"
local SemiColon = Instance.new("ImageButton")
SemiColon.Name = "SemiColon"
SemiColon.Parent = NGui
SemiColon.AnchorPoint = Vector2.new(0.5, 0.5)
SemiColon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SemiColon.BorderColor3 = Color3.fromRGB(0, 0, 0)
SemiColon.BorderSizePixel = 0
SemiColon.Position = UDim2.new(0, 30, 0.5, 50)
SemiColon.Size = UDim2.new(0, 40, 0, 40)
SemiColon.Image = "rbxassetid://190839214"
SemiColon.MouseButton1Click:Connect(function()
	CmdBar3:CaptureFocus()
end)
OpenGUI.MouseButton1Click:Connect(function()
	Gui.Tween(NFrame,0.5,UDim2.new(0.5,0,0.5,0))
end)
Gui.Drag(OpenGUI)
Gui.Drag(SemiColon)
Gui.Drag(NFrame)
Gui.CmdBar3 = CmdBar3
Gui.cmdHandler = cmdHandler
pcall(function()NGui.Parent=game:GetService("CoreGui")end)
return Gui

