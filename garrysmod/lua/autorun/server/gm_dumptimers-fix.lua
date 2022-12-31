require("dumptimers_fix")

local punish = true -- ban people that try to use this exploit?
local punish_time = 0 -- 0 = infinitie, 1 = minute, 60 = hour, e.t.c
local log = true -- log people that try to use this exploit?

if (punish or log) == false then concommand.Remove("lua_dumptimers_sv") return end

concommand.Add("lua_dumptimers_sv", function(ply)
    if log then
        file.Append("lua_dumptimers_sv.txt", string.format("%s (%s), %s\n", ply:Nick(), ply:SteamID64(), os.date("!%H:%M:%S, %d.%m.%Y")))
    end

    if punish then
        ply:Ban(punish_time, true)
    end 
end)
