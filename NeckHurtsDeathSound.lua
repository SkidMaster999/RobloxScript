--[[
   Putting this script on auto execute is recommended

   To turn the script off, simply execute:
   _G.NeckHurtSound = false
]]
repeat wait() until game:IsLoaded()
if _G.NeckHurtSound then
	return
end
_G.NeckHurtSound = true

local IDs = "rbxassetid://139961616733383"
pcall(function()
	local GetAss = getsynasset or getcustomasset
	if not isfile("NeckHurtsDeath.mp3") then
		writefile("NeckHurtsDeath.mp3",game:HttpGet("https://github.com/SkidMaster999/RobloxObjects/blob/main/neckhurtsSFX.mp3?raw=true"))
	end
	IDs = GetAss("NeckHurtsDeath.mp3")
end)
local plrs = game:GetService("Players")
--Running on loop
while _G.NeckHurtSound and task.wait(0.03) do
	for i,v in pairs(plrs:GetPlayers()) do
		if v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
			local sound = v.Character.HumanoidRootPart:FindFirstChild("Died")
			if sound then
				sound.SoundId = IDs
			end
		end
	end
end
