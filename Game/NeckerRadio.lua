--Planning on turning it into "Music Hub"
local F="NeckHurts1.mp3" 
local A=getsynasset or getcustomasset
if not(writefile and isfile and A)then warn("unsupported")return end
writefile(F,game:HttpGet("https://github.com/SkidMaster999/RobloxObjects/blob/main/7d012a3c-daf5-498e-a668-65353a0d5ed3.mp3?raw=true"))
local S=Instance.new("Sound")
S.SoundId=A(F)
S.Volume= 1 
S.Parent=game:GetService("SoundService")
S:Play()
S.Looped = true
