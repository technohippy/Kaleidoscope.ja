// $ clang++ -emit-llvm -S print.cpp -o print.ll
// $ llvm-as print.ll
#include <cstdio>

//===----------------------------------------------------------------------===//
// "Library" functions that can be "extern'd" from user code.
//===----------------------------------------------------------------------===//

/// putchard - putchar that takes a double and returns 0.
extern "C"
double putchard(double X) {
  putchar((char)X);
  return 0;
}

/// printd - printf that takes a double prints it as "%f\n", returning 0.
extern "C"
double printd(double X) {
  printf("%f\n", X);
  return 0;
}
