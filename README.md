# gm_dumptimers-fix - The clearest way to remove lua_dumptimers_sv

A half of GMOD servers are in danger now only because of lua_dumptimers_sv concommand.

Deviatt has found an issue and made the fix for it.

Added also method 'garrysmod/cfg/server.cfg' (Method without working with the engine. Not recommended). Thx daddy Beelzebub#0281 :)
# Installation
1. Create 'bin' dir inside your 'lua' dir.
2. Move your 'gmsv_dumptimers_fix_*.dll' into it.
3. Create a lua file inside 'lua/autorun/server/' with 'require("dumptimers_fix")'
4. Enjoy!

# Problem
Compiled binaries are not ready for CentOS and have newest C++ version (so C++ < 6 isn't working)

Fixing that issue.

ALSO: This won't work on the client, don't even try running that on you Garry's Mod instance, these dll's are compiled to work ONLY on SRCDS.

# Build
Don't forget to use this library when compiling: https://github.com/danielga/garrysmod_common

# Links

Discord - Deviatt#5010

Discord server - https://discord.gg/FnhSJcAJcB

Fix commit - https://commits.facepunch.com/379763
