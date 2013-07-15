#include <iostream>
#include <cstdlib>
#include <fasttp/fasttp.h>

int main( int argc, char** argv )
{
  std::cout << "Welcome to fasttp-server " << fasttp::version() << std::endl;
  
  return EXIT_SUCCESS;
}

