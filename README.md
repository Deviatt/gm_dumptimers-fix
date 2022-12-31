# gm_dumptimers-fix - The clearest way to remove lua_dumptimers_sv
Alot of servers now are in danger now, because `lua_dumptimers_sv` concommand are exploitable.  
`lua_dumptimers_sv` allows freeze server just via running this console command on client-side (it doesnt even need cheats or anything like that, just use this command to break the server).  
Deviatt has found an issue and made the fix for it.

## Installation:
1. Make a `bin` dir in your `garrysmod/lua/`.
2. Download a binary `gmsv_dumptimers_fix_?.dll` from [releases](https://github.com/Deviatt/gm_dumptimers-fix/releases) & move it in your `garrysmod/lua/bin/`
3. Download [gm_dumptimers-fix.lua](https://github.com/Deviatt/gm_dumptimers-fix/blob/main/garrysmod/lua/autorun/server/gm_dumptimers-fix.lua) & move it in `garrysmod/lua/autorun/server/`.
4. Configure [gm_dumptimers-fix.lua](https://github.com/Deviatt/gm_dumptimers-fix/blob/main/garrysmod/lua/autorun/server/gm_dumptimers-fix.lua) on lines 3-5 if you dont wanna punish/log exploiters.
5. Enjoy a server that is no longer affected by this exploit!

## Issues:
Compiled binaries are not ready for CentOS and have newest C++ version (so C++ < 6 isn't working)

## Notes:
This is serverside module, do not try to run it on your Garry's Mod instance, its compiled to work only in SRCDS.

## Build:
Don't forget to install [garrysmod_common](https://github.com/danielga/garrysmod_common), this fix depends on it.

## Links:
Discord: Deviatt#5010  
Discord server: https://discord.gg/FnhSJcAJcB  
Fix commit: https://commits.facepunch.com/379763
