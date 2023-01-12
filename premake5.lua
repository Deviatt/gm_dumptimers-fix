PROJECT_GENERATOR_VERSION = 3

newoption {
    trigger = "gmcommon",
    description = "Sets the path to the garrysmod_common (https://github.com/danielga/garrysmod_common) directory",
    value = "path to garrysmod_common directory"
}

include(assert(_OPTIONS.gmcommon or os.getenv("GARRYSMOD_COMMON"), "you didn't provide a path to your garrysmod_common (https://github.com/danielga/garrysmod_common) directory"))

CreateWorkspace {name = "dumptimers_fix"}
    CreateProject {serverside = true}
        IncludeSDKTier0()
        IncludeSDKCommon()
        IncludeHelpersExtended()
        files {"src/fix.cpp"}
