workspace "Math"
    filename "Math_LIB"
    architecture "x64"
    configurations {"Release"}
    location "Build/Math"

project "Math_Library"
    filename "Math_Project"
    location "Build/Math"
    files {"Math/**.*"}
    kind "StaticLib"
    language "C++"

filter "configurations:Release"
    defines {"NDEBUG"}
    optimize "on"