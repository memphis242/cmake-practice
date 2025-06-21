// A simple program that computes the square root of a number
#include <cmath>
#include <iostream>
#include <string>

#include "TutorialConfig.h"

int main(int argc, char* argv[])
{
  if (argc < 2) {
    std::cout << "Version: " << Tutorial_VERSION_MAJOR << '.' <<
                                Tutorial_VERSION_MINOR << '.' <<
                                Tutorial_VERSION_PATCH <<
                 "\nUsage: <program> <number>" << '\n';
    return 1;
  }

  try
  {

  // convert input to double
  double const inputValue = std::stod(argv[1]);
  // calculate square root
  double const outputValue = sqrt(inputValue);
  std::cout << "√" << inputValue << " = " << outputValue << '\n';

  }
  // If the input argument was malformed...
  catch ( const std::exception& e )
  {
    std::cerr << "Exception: " << e.what() << '\n';
    return 1;
  }

  return 0;
}
