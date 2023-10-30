ProjectName = "CORE"

-- Sollution
workspace "Main"
    filename ("Workspace_" .. ProjectName)
    architecture "x64"
    configurations {"Release", "Debug"}
    location "build/Core"

-- Project in Sollution
project "Core"
    location "build/Core"

    -- Type Of App
    kind "ConsoleApp"
    language "C++"
    files {"Core/**.*"}

-- Defines 
DebugSymbols = "DEBUG"
filter "configurations:Debug"
    defines {(DebugSymbols)}
    symbols "on"

-- Varriable With List Of values
ReleaseSymbols = {"NDEBUG", "Release", "Productions"}
filter "configurations:Release"
    defines {(ReleaseSymbols)}

    -- Removing Productions
    removedefines { "Productions" }
    optimize "on"