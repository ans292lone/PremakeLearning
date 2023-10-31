workspace "Main"
    filename "Math_Lib_Use"
    architecture "x64"
    configurations {"Release"}
    location "build/Main"

project "Main"
    filename "Math_Usage"
    files {"Math/Includes/**.*"}
    location "build/Main"
    kind "ConsoleApp"
    language "C++"

    libdirs { "libs", "Math/Libs" }
    links {"Math_Library.lib"}

filter "configurations:Release"
    defines {"NDEBUG"}
    optimize "on"