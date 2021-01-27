#include <cstdlib>
int main()
{
	std::system("sudo sync;sudo echo 3 > /proc/sys/vm/drop_caches");
	std::system("echo """"Cleared Ram""");
}
