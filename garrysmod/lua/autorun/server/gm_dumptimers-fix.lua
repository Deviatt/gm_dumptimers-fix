require("dumptimers_fix")

local punish = false -- ban people that try to use this exploit?
local punish_time = 0 -- 0 = infinitie, 1 = minute, 60 = hour, e.t.c
local log = false -- log people that try to use this exploit?

if (punish or log) == false then concommand.Remove("lua_dumptimers_sv") return end

local lastLog = {}

local function logAdd(ply, msg)
    if (lastLog[ply] or 0) > CurTime() then return end
    lastLog[ply] = CurTime() + 5 -- 1 log per 5 seconds (anti spam)
    
    file.Append("lua_dumptimers_sv.txt", msg)
end

concommand.Add("lua_dumptimers_sv", function(ply)
    if log then
        logAdd(ply, string.format("%s (%s), %s\n", ply:Nick(), ply:SteamID64(), os.date("!%H:%M:%S, %d.%m.%Y")))
    end

    if punish then
        ply:Ban(punish_time, true)
    end 
end)
