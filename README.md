# gm_dumptimers-fix - The clearest way to fix lua_dumptimers_sv exploit
Alot of servers now are in danger now, because `lua_dumptimers_sv` concommand are exploitable.  
`lua_dumptimers_sv` allows freeze server just via running this console command on client-side (it doesnt even need cheats or anything like that, just use this command to break the server).  

## Installation:
1. Make a `bin` dir in your `garrysmod/lua/`.
2. Download a binary `gmsv_dumptimers_fix_?.dll` from [releases](https://github.com/Deviatt/gm_dumptimers-fix/releases) & move it in your `garrysmod/lua/bin/`
3. Download [gm_dumptimers-fix.lua](https://github.com/Deviatt/gm_dumptimers-fix/blob/main/garrysmod/lua/autorun/server/gm_dumptimers-fix.lua) & move it in `garrysmod/lua/autorun/server/`.
4. Enjoy a server that is no longer affected by this exploit!

## Notes:
- Compiled binaries are not ready for CentOS and should have newest C++ version install (because C++ < 6 isn't working)
- PLib is not working well with this fix.
- Rubat fixed this issue on dev-branch already.

## Build:
Don't forget to install [garrysmod_common](https://github.com/danielga/garrysmod_common), this fix depends on it.

## Links:
Discord: Deviatt#5010  
Discord server: https://discord.gg/FnhSJcAJcB  
Fix commit: https://commits.facepunch.com/379763
