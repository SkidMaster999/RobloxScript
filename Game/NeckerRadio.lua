if not(writefile and isfile and (getcustomasset or getsynasset))then warn("unsupported") return _G.TopBarNotif("Unsupported executor!") end
for i = 0,500 do
  game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Downloading Song";Text = "This consumes storage. Rejoin to stop";Icon = "";Duration = 5;})
  local V = game:HttpGet("https://neckerdestroyer.ct.ws/media/neckhurtsong"..tostring(i)..".mp3")
  if V then
    writefile("neckhurtsong"..tostring(i)..".mp3",V)
  else break end
  local A=getsynasset or getcustomasset
  local S=Instance.new("Sound")
  S.SoundId=A("neckhurtsong"..tostring(i)..".mp3")
  S.Volume= 1 
  S.Parent=game:GetService("SoundService")
  S:Play()
  S.Ended:Wait()
  S:Destroy()
end
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "No More Neckhurts Songs!";Text = "File Manager > Delta (Executor Name) > workspace > neckhurtsong.mp3";Icon = "";Duration = 5;})
