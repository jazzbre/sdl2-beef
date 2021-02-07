using System;
using SDL2;

namespace example
{
	class Program
	{
		public static int Main()
		{
			// Initialization
			SDL.Init(.Video | .Events | .Audio);

			// Window creation
			var window = SDL.CreateWindow("SDL Example", .Undefined, .Undefined, 640, 480, .Shown | .Resizable);
			SDL.MaximizeWindow(window);

			// Event loop
			var quitting = false;
			while (!quitting)
			{
				SDL.Event event;
				while (SDL.PollEvent(out event) != 0)
				{
					SDL.Log(scope $"SDL Event {event.type}");
					switch (event.type)
					{
					case .Quit:
						quitting = true;
					default:
					}
				}
			}

			// Finalization
			SDL.DestroyWindow(window);
			return 0;
		}
	}
}
