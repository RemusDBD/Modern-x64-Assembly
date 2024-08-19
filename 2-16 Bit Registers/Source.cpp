#include <iostream>

using namespace std;

extern "C" void SomeFunction();

int main() {
	SomeFunction();
	
	return 0;
}