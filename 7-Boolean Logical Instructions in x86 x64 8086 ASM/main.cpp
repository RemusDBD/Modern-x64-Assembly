#include <iostream>

using namespace std;

void PrintBianry(int i)
{
	for (int s = 15; s >= 0; s--)
		cout << ((i >> s) & 1);

	cout << endl;

}

extern "C" int BooleanFunction();

int main()
{
	PrintBianry(BooleanFunction());

	cin.get();

	return 0;
}