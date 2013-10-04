#include <iostream>

#include "Foo.h"

int main()
{
    Foo foo;

    if (foo.add(1, 2) != 3)
    {
        std::cerr << "ERROR: Expected 1 + 2 == 3" << std::endl;
        return 1;
    }

    return 0;
}
