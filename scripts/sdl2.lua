project "sdl2"
	kind "StaticLib"
   windowstargetplatformversion("10.0")
   
   defines {
      "SDL_VIDEO_OPENGL=0",
      "SDL_VIDEO_OPENGL_ES2=0",
      "SDL_VIDEO_RENDER_OGL_ES2=0",
      "SDL_VIDEO_OPENGL_EGL=0",
      "SDL_VIDEO_OPENGL_CGL=0",
      "SDL_VIDEO_OPENGL_GLX=0",
      "SDL_VIDEO_VULKAN=0",
      "SDL_VIDEO_METAL=0",
      "SDL_RENDER_DISABLED=1"
   }

   includedirs {
      path.join(SOURCE_DIR, "SDL/include"),
      path.join(SOURCE_DIR, "SDL/src/hidapi/hidapi"),
   }

   files {
      path.join(SOURCE_DIR, "SDL/include/*.h"),
      path.join(SOURCE_DIR, "SDL/src/*.c"),
      path.join(SOURCE_DIR, "SDL/src/**.h"),	
      path.join(SOURCE_DIR, "SDL/src/atomic/*.c"),
      path.join(SOURCE_DIR, "SDL/src/audio/*.c"),
      path.join(SOURCE_DIR, "SDL/src/audio/dummy/*.c"),
      path.join(SOURCE_DIR, "SDL/src/audio/disk/*.c"),
      path.join(SOURCE_DIR, "SDL/src/cpuinfo/*.c"),
      path.join(SOURCE_DIR, "SDL/src/dynapi/*.c"),
      path.join(SOURCE_DIR, "SDL/src/events/*.c"),
      path.join(SOURCE_DIR, "SDL/src/file/*.c"),
      path.join(SOURCE_DIR, "SDL/src/haptic/*.c"),
      path.join(SOURCE_DIR, "SDL/src/haptic/dummy/*.c"),
      path.join(SOURCE_DIR, "SDL/src/joystick/*.c"),
      path.join(SOURCE_DIR, "SDL/src/joystick/virtual/*.c"),
      path.join(SOURCE_DIR, "SDL/src/joystick/hidapi/*.c"),
      path.join(SOURCE_DIR, "SDL/src/power/*.c"),
      path.join(SOURCE_DIR, "SDL/src/render/*.c"),
      path.join(SOURCE_DIR, "SDL/src/render/software/*.c"),
      path.join(SOURCE_DIR, "SDL/src/sensor/*.c"),
      path.join(SOURCE_DIR, "SDL/src/sensor/dummy/*.c"),
      path.join(SOURCE_DIR, "SDL/src/stdlib/*.c"),
      path.join(SOURCE_DIR, "SDL/src/thread/*.c"),
      path.join(SOURCE_DIR, "SDL/src/timer/*.c"),
      path.join(SOURCE_DIR, "SDL/src/timer/dummy/*.c"),
      path.join(SOURCE_DIR, "SDL/src/video/*.c"),
      path.join(SOURCE_DIR, "SDL/src/video/dummy/*.c"),
      path.join(SOURCE_DIR, "SDL/src/video/yuv2rgb/*.c"),
      path.join(SOURCE_DIR, "SDL/src/misc/*.c"),
      path.join(SOURCE_DIR, "SDL/src/locale/*.c"),
   }

   configuration { "vs20*" }
	files {
		path.join(SOURCE_DIR, "SDL/src/audio/directsound/*.c"),
		path.join(SOURCE_DIR, "SDL/src/audio/winmm/*.c"),
		path.join(SOURCE_DIR, "SDL/src/audio/xaudio2/*.c"),
		path.join(SOURCE_DIR, "SDL/src/audio/wasapi/*.c"),		
		path.join(SOURCE_DIR, "SDL/src/haptic/windows/*.c"),
		path.join(SOURCE_DIR, "SDL/src/hidapi/windows/*.c"),
		path.join(SOURCE_DIR, "SDL/src/joystick/windows/*.c"),
		path.join(SOURCE_DIR, "SDL/src/thread/windows/*.c"),
		path.join(SOURCE_DIR, "SDL/src/thread/generic/SDL_syscond.c"),
		path.join(SOURCE_DIR, "SDL/src/video/windows/*.c"),
		path.join(SOURCE_DIR, "SDL/src/core/windows/*.c"),
		path.join(SOURCE_DIR, "SDL/src/filesystem/windows/*.c"),
		path.join(SOURCE_DIR, "SDL/src/loadso/windows/*.c"),
		path.join(SOURCE_DIR, "SDL/src/power/windows/*.c"),	
		path.join(SOURCE_DIR, "SDL/src/sensor/windows/*.c"),
		path.join(SOURCE_DIR, "SDL/src/timer/windows/*.c"),
		path.join(SOURCE_DIR, "SDL/src/render/direct3d/*.c"),
		path.join(SOURCE_DIR, "SDL/src/render/opengl/*.c"),
      path.join(SOURCE_DIR, "SDL/src/render/opengles/*.c"),
      path.join(SOURCE_DIR, "SDL/src/render/opengles2/*.c"),
      path.join(SOURCE_DIR, "SDL/src/libm/*.c"),
      path.join(SOURCE_DIR, "SDL/src/misc/windows/*.c"),
      path.join(SOURCE_DIR, "SDL/src/locale/windows/*.c"),
   }
	defines {
		"HAVE_LIBC",
	}
   
   configuration { "osx" }
	files {
		path.join(SOURCE_DIR, "SDL/src/haptic/darwin/*.c"),
		path.join(SOURCE_DIR, "SDL/src/hidapi/mac/*.c"),
      path.join(SOURCE_DIR, "SDL/src/joystick/darwin/*.c"),
      path.join(SOURCE_DIR, "SDL/src/joystick/iphoneos/*.*"),
		path.join(SOURCE_DIR, "SDL/src/power/macosx/*.c"),
		path.join(SOURCE_DIR, "SDL/src/video/cocoa/*.c"),
		path.join(SOURCE_DIR, "SDL/src/video/cocoa/*.m"),
      path.join(SOURCE_DIR, "SDL/src/render/opengl/*.c"),
      path.join(SOURCE_DIR, "SDL/src/loadso/dlopen/*.c"),
      path.join(SOURCE_DIR, "SDL/src/timer/unix/*.c"),
      path.join(SOURCE_DIR, "SDL/src/core/unix/*.c"),
      path.join(SOURCE_DIR, "SDL/src/thread/pthread/*.c"),
		path.join(SOURCE_DIR, "SDL//src/audio/coreaudio/*.m"),
		path.join(SOURCE_DIR, "SDL/src/file/cocoa/*.m"),
      path.join(SOURCE_DIR, "SDL/src/filesystem/cocoa/*.m"),
      path.join(SOURCE_DIR, "SDL/src/misc/macosx/*.m"),
      path.join(SOURCE_DIR, "SDL/src/locale/macosx/*.m"),
   }
   defines {
      "MAC_OS_X_VERSION_MIN_REQUIRED=1060"
   }
   
	configuration {}