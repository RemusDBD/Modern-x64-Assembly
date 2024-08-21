#include <iostream>

using namespace std;

extern "C" void FlagFunction();

int main() {
	FlagFunction();

	return 0;
}