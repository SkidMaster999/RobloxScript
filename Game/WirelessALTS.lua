--Wireless Technology
local function Chat(args)
    game:GetService("TextChatService").ChatInputBarConfiguration.TargetTextChannel:SendAsync(args)
end
local lp,pl = game:GetService("Players").LocalPlayer,game:GetService("Players")
local cmds,args,sta,connected = {},{},{},{}
cmds["_ProbeRequest"] = function(sender,msg)
    Chat("_BeaconFrame")
    sta[sender.Name] = sender
end
cmds["_WPA-Authenticate-Request"] = function(sender,msg)
    msg = msg:Split(" ")
    if msg[2]==lp.Name then
        connected[sender.Name] = sender
        Chat("_WPA-Authenticate-Handshake")
    end
end
Chat("_ProbeRequest")
