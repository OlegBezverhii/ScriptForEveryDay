#                include <iostream>
#include <string>
#include <vector>

void test1();
int test2();

// Комментарий в стиле С для функции main()
int main( int argc, char** argv ) {
    std::cout << "Hello, world!" << std::endl;

    for( int i = 0; i < 10; ++i ) {
        std::cout << i << std::endl;
    }

    return 0;
}

// Комментарий в стиле С для функции test1()
void test1() {
    std::cout << "Hello, test1!" << std::endl;
}

// Комментарий в стиле С для функции test2()
int test2() {
    std::cout << "Hello, test2!" << std::endl;
    return 0;
}


