using System;
using SDL2;

namespace example
{
	class Program
	{
		public static int Main()
		{
                       SDL.Init(.Video | .Events | .Audio);
                       return 0;
		}
	}
}
