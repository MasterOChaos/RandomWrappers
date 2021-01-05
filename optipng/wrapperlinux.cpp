#include <cstdlib>
int main()
{
    std::system("find . -name *.png | parallel optipng -o7");
}
