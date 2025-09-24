if not(writefile and isfile and (getcustomasset or getsynasset))then warn("unsupported") return _G.TopBarNotif("Unsupported executor!") end
for i = 0,500 do
  local V = game:HttpGet("https://neckerdestroyer.ct.ws/media/neckhurtsong"..tostring(i)..".mp3")
  if V then
    game:GetService("StarterGui"):SetCore("SendNotification", {
		  Title = "Loading Song";
		  Text = "Please wait...";
		  Icon = "";
		  Duration = 5;
	  })
    writefile("neckhurtsong.mp3",V)
  else break end
  local A=getsynasset or getcustomasset
  local S=Instance.new("Sound")
  S.SoundId=A("neckhurtsong.mp3")
  S.Volume= 1 
  S.Parent=game:GetService("SoundService")
  S:Play()
  S.Ended:Wait()
  S:Destroy()
end
_G.TopBarNotif("No more neckhurts songs!")
