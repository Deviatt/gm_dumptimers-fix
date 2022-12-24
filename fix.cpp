#include <GarrysMod/Lua/Interface.h>
#include <GarrysMod/Interfaces.hpp>

#include <icvar.h>

static SourceSDK::FactoryLoader icvar_loader("vstdlib", true, IS_SERVERSIDE, "bin/");

GMOD_MODULE_OPEN() {
    ICvar *icvar = icvar_loader.GetInterface<ICvar>(CVAR_INTERFACE_VERSION);
    ConCommandBase *lua_dumptimers_sv = icvar->FindCommandBase("lua_dumptimers_sv");
    if (lua_dumptimers_sv) icvar->UnregisterConCommand(lua_dumptimers_sv);
    return 0;
}