#include <iostream>

using namespace std;

extern "C" void TestFunction();
extern "C" unsigned long long GCD_ASM(unsigned long long x, unsigned long long y);
unsigned long long GCD(unsigned long long x, unsigned long long y) {
	if (x <= 0 || y <= 0)
		return 0;

	while (y != 0) {
		int tmp = y;
		y = x % y;
		x = tmp;
	}

	return x;

}

int main()
{
	// TestFunction(); (remove // when use DIV)

	cout << "GCD: " << GCD_ASM(57 * 56, 57 * 78) << endl; 
	cin.get();

	return 0;
}