if not(writefile and isfile and A)then warn("unsupported") return _G.TopBarNotif("Unsupported executor!") end
for i = 0,16 do
  local F = "neckhurtsong"..tostring(i)..".mp3"
  if not isfile(F) then
    task.spawn(function()
        _G.TopBarNotif("Loading "..F.." please wait...")
    end)
    writefile(F,game:HttpGet("https://github.com/SkidMaster999/RobloxObjects/blob/main/"..F.."?raw=true"))
  end
  local A=getsynasset or getcustomasset
  local S=Instance.new("Sound")
  S.SoundId=A(F)
  S.Volume= 1 
  S.Parent=game:GetService("SoundService")
  S:Play()
  S.Ended:Wait()
  S:Destroy()
end
