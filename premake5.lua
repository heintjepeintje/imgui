project "ImGui"
	kind "StaticLib"
	language "C++"
	cppdialect "C++20"
	
	files {
		"./imgui_demo.cpp",
		"./imgui_draw.cpp",
		"./imgui_tables.cpp",
		"./imgui_widgets.cpp",
		"./imgui.cpp",
		"./backends/imgui_impl_win32.cpp",
		"./backends/imgui_impl_opengl3.cpp"
	}

	includedirs {
		"./backends"
	}
	
	targetdir "./Binaries/Output/%{cfg.buildcfg}"
	objdir "./Binaries/Intermediate/%{cfg.buildcfg}"

	filter "configurations:Debug"
      defines { "_DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"