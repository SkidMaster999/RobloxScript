--This hub is currently a work in progress

--N Library
local GF = loadstring(game:HttpGet("https://raw.githubusercontent.com/SkidMaster999/RobloxScript/refs/heads/main/NeckHurt/Lib.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/SkidMaster999/RobloxScript/refs/heads/main/NeckHurt/GameScripts"))(GF.AddScript)
--GetService
local function GetService(arg)
    local Ser = game.GetService
	local Ref = cloneref or function(refer) return refer end
	return Ref(Ser(game,arg))
end
local RunService,Players = GetService("RunService"),GetService("Players")
local HB,RS,SP = RunService.Heartbeat,RunService.RenderStepped,RunService.Stepped
--Main
local Commands,Args,Tog = {},{
    temp = nil,
},{
    temp = nil,
}
local addc,addm = function(Name,Desc,Callnames,Calling)
    GF.AddCmds(Name,Desc)
    for i,v in next,Callnames do
        Commands[v] = Calling
    end
end,function(Name,Desc,Callbacka,Tog)
    GF.AddMisc(Name,Desc,Callbacka,Tog)
end
