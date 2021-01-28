#include <cstdlib>
int main()
{
	std::system("sync;echo 3 > /proc/sys/vm/drop_caches");
	std::system("echo """"Cleared Ram""");
}
