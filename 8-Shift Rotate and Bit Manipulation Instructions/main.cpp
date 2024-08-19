#include <iostream>

using namespace std;

// change the below if you test shift with double
 extern "C" int ShiftTest(unsigned long long* p);
// extern "C" void ShiftDoubleTest(unsigned long long& p1, unsigned long long& p2);

void PrintBits(int carry, unsigned long long p, int bitCount)
{
	cout << "C: " << carry << " ";

	for (int j = bitCount - 1; j >= 0; j--)
		cout << ((p >> j) & 1);

	cout << endl;
}

int main() {
	unsigned long long p1 = 12341; // can change it to negative 
	// unsigned long long p2 = 0b110010101100101101010110;
	int carry = 0;

	PrintBits(carry, p1, 64);
	//PrintBits(carry, p2, 64);
	cin.get();

	while (true)
	{
		carry = ShiftTest(&p1); // Pass the address of p1
		//ShiftDoubleTest(p1, p2);

		PrintBits(carry, p1, 64);
		//PrintBits(carry, p2, 32);

		cin.get();
	}
	return 0;
}
