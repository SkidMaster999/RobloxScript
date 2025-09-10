if not(writefile and isfile and (getcustomasset or getsynasset))then warn("unsupported") return _G.TopBarNotif("Unsupported executor!") end
for i = 0,24 do
  local F = "neckhurtsong"..tostring(i)..".mp3"
  if not isfile(F) then
    task.spawn(function()
        _G.TopBarNotif("Downloading "..F.." (Consumes storage)")
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
_G.TopBarNotif("No more neckhurts songs!")
