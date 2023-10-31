ProjectName = "CORE"

-- Sollution
workspace "Main"
    filename ("Workspace_" .. ProjectName)
    architecture "x64"
    configurations {"ReleaseLib", "DebugLib", "ReleaseDLL", "DebugDLL"}
    location "build/Core"

-- Project in Sollution
project "Core"
    location "build/Core"

    -- Type Of App
    kind "ConsoleApp"
    language "C++"
    files {"Core/**.*"}

filter "configurations:*Lib"
    -- Lib
    kind "StaticLib"

filter "configurations:*DLL"
    -- DLL
    kind "SharedLib"    

filter "configurations:Release*"
    defines {"NDEBUG"}
    symbols "on"

filter "configurations:Debug*"
    defines {"DEBUG"}
    symbols "on"