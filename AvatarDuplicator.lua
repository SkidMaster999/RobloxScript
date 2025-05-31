--Made by SkidMaster

repeat wait() until game:IsLoaded()
repeat wait() until game.Players.LocalPlayer.Character

local AvatarCopyGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")

AvatarCopyGui.Name = "AvatarCopyGui"
AvatarCopyGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
AvatarCopyGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
AvatarCopyGui.ResetOnSpawn = false

Frame.Parent = AvatarCopyGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.489435881, 0, 0.534900665, 0)
Frame.Size = UDim2.new(0, 252, 0, 103)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 252, 0, 40)
TextLabel.Font = Enum.Font.Highway
TextLabel.Text = "Avatar Duplicator"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 27.000
TextLabel.TextWrapped = true

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(129, 129, 129)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0, 0, 0.460000008, 0)
TextBox.Size = UDim2.new(0, 252, 0, 50)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = ""
TextBox.PlaceholderText = "Insert UserId/Username or leave it blank"
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextStrokeTransparency = 0.000
TextBox.TextWrapped = true

local function dragframe(frame)
	local dragging,dragStartPos,startPos,primaryInput
	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true 
			dragStartPos = input.Position 
			startPos = frame.Position
			local tm
			tm=input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging=false;tm:Disconnect()
				end
			end)
		end
	end)
	frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			primaryInput = input
		end
	end)
	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if dragging and input == primaryInput and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			local delta=input.Position-dragStartPos
			frame.Position=UDim2.new(startPos.X.Scale,startPos.X.Offset+delta.X,startPos.Y.Scale,startPos.Y.Offset+delta.Y)
		end
	end)
end
dragframe(Frame)
local LocalPlayer = game:GetService("Players").LocalPlayer
local Stepped = game:GetService("RunService").Stepped
local TargetUserId = nil
local Avatar = nil
local function CopyAvatar(Character)
	if not TargetUserId then
		return
	end
	if Avatar then
		Avatar:Destroy()
	end
	local Human = Character:WaitForChild("Humanoid",1)
	if Human then
		local Collisions = {}
		local Animations = {}
		local PhysicsService = game:GetService("PhysicsService")
		local LastPos = Human.Parent:WaitForChild("HumanoidRootPart",1).CFrame
		Avatar = game.Players:CreateHumanoidModelFromUserId(TargetUserId)
		Avatar.Parent = game:GetService("Workspace")
		Avatar.Name = ""
		for i,v in pairs(Avatar:FindFirstChild("Animate"):GetChildren()) do
			for ii,vv in pairs(v:GetChildren()) do
				if vv:IsA("Animation") then
					if ii>1 then
						Animations[v.Name.."2"] = vv.AnimationId
					else
						Animations[v.Name] = vv.AnimationId
					end
				end
			end
		end
		for i,v in pairs(Character:FindFirstChild("Animate"):GetChildren()) do
			for ii,vv in pairs(v:GetChildren()) do
				if vv:IsA("Animation") then
					if Animations[v.Name] then
						if ii>1 then
							vv.AnimationId = Animations[v.Name.."2"]
						else
							vv.AnimationId = Animations[v.Name]
						end
					end
				end
			end
		end
		for i,v in pairs(Avatar:GetDescendants()) do
			if v:IsA("BasePart") or v:IsA("Part") or v:IsA("MeshPart") then
				Collisions[#Collisions+1] = v
			end
			if v:IsA("Accessory") then
				local handle = v:FindFirstChildWhichIsA("Part") or v:FindFirstChildWhichIsA("MeshPart") or v:FindFirstChildWhichIsA("WedgePart")
				if handle and handle.CanCollide then
					Collisions[#Collisions+1] = v
				end
			end
			if v.Name:lower()=="UpperTorso" then
				Collisions[#Collisions+1] = v
			end
		end
		for i,v in pairs(Character:GetDescendants()) do
			if v:IsA("BasePart") or v:IsA("Part") or v:IsA("MeshPart") then
				v.Transparency = 1
			end
			if v:IsA("Accessory") then
				local handle = v:FindFirstChildWhichIsA("Part") or v:FindFirstChildWhichIsA("MeshPart") or v:FindFirstChildWhichIsA("WedgePart")
				if handle and handle.CanCollide then
					v.Transparency = 1
				end
			end
			if v.Name:lower()=="UpperTorso" then
				v.Transparency = 1
			end
			if v:FindFirstChild("face") then
				v:FindFirstChild("face"):Destroy()
			end
		end
		Human.HipHeight = Avatar:FindFirstChild("Humanoid").HipHeight
		local playing
		local humancon=Human.AnimationPlayed:Connect(function(anim)
			if playing then
				playing:Stop()
			end
			local an = Instance.new("Animation")
			an.AnimationId = anim.Animation.AnimationId
			playing = Avatar:FindFirstChild("Humanoid"):LoadAnimation(an)
			playing:Play()
			playing:AdjustSpeed(anim.Speed)
			playing.Looped = anim.Looped
			anim.Stopped:Wait()
			playing:Stop()
			playing:Destroy()
		end)
		task.spawn(function()
			pcall(function()
				while Character==LocalPlayer.Character and task.wait() do
					local LR,LH = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart"),LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")
					if LR and LH then
						Avatar:FindFirstChild("HumanoidRootPart").CFrame = LR.CFrame
						Avatar:FindFirstChild("Humanoid").Health = LH.Health
						workspace.CurrentCamera.CameraSubject = Avatar:FindFirstChild("Humanoid")
					end
				end
			end)
			humancon:Disconnect()
			Avatar:Destroy()
			workspace.CurrentCamera.CameraSubject = (LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()):WaitForChild("Humanoid",1)
		end)
		pcall(function()
			while Character==LocalPlayer.Character and Stepped:Wait() do
				if Avatar:FindFirstChild("Humanoid").Health>1 then
					for i,v in pairs(Collisions) do
						v.CanCollide = false
					end
				else
					for i,v in pairs(Collisions) do
						v.CanCollide = true
					end
				end
			end
		end)
	end
end
TextBox.FocusLost:Connect(function()
	local text = TextBox.Text
	if text~="" then
		if tonumber(text) then
			local successed,errored = pcall(function()
				TargetUserId = tonumber(text)
				CopyAvatar(LocalPlayer.Character)
			end)
			if not successed then
				TextBox.Text = "Player does not exist!"
			end
		elseif tostring(text) then
			local successed,returned = pcall(function()
				return game.Players:GetUserIdFromNameAsync(text)
			end)
			if successed then
				TargetUserId = returned
				CopyAvatar(LocalPlayer.Character)
			else
				TextBox.Text = "Player does not exist!"
			end
		end
	else
		TargetUserId = nil
	end
end)
LocalPlayer.CharacterAdded:Connect(CopyAvatar)
