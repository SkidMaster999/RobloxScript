--Planning on turning it into "Music Hub"
local F="NeckHurts1.mp3" 
local A=getsynasset or getcustomasset
if not(writefile and isfile and A)then warn("unsupported")return end
writefile(F,game:HttpGet("https://github.com/SkidMaster999/RobloxObjects/blob/main/audiomass-output%20(10).mp3?raw=true"))
local S=Instance.new("Sound")
S.SoundId=A(F)
S.Volume= 1 
S.Pitch = 0.5
S.PlaybackSpeed = 0.5
S.Parent=game:GetService("SoundService")
S:Play()
S.Looped = true
