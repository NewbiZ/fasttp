#include <iostream>
#include <cstdlib>
#include <fasttp/fasttp.h>

int main( int argc, char** argv )
{
  std::cout << "Welcome to fasttp-client " << fasttp::version() << std::endl;
  
  return EXIT_SUCCESS;
}
