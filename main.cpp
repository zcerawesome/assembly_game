#include <iostream>

extern "C" void add_numbers(int a)
{
    fflush(stdout);
    std::cout << "" << a << std::endl;
    printf("Mic check");
}

int main()
{
    std::ios_base::Init init;
    return 0;
}