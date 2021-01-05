#include <cstdlib>
int main()
{
	std::system("for %i in (*.png) do ""optipng.exe"" ""-o7"" ""%i""");
}
