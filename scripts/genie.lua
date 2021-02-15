solution "sdl2"
	configurations {
		"Debug",
		"Release",
	}

	platforms {
		"x32",
		"x64",
		"Native", -- for targets where bitness is not specified
	}

	language "C++"

SOURCE_DIR   = path.getabsolute("../submodules")
local BUILD_DIR = path.getabsolute("../.build")

defines {
}

dofile ("toolchain.lua")
if not toolchain(BUILD_DIR, SOURCE_DIR) then
	return -- no action specified
end

function copyLib()
end

dofile "sdl2.lua"
