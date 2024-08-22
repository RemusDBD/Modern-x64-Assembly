#include <iostream>

using namespace std;

//class Carly
//{
//public:
//	int j;
//	Carly()
//	{
//		j = 5;
//	}
//};

// extern "C" Carly* CallMeMaybe();

//int main() {

	//Carly g;
	//Carly* ptr = &g;
	//Carly*  iujhghjhgh = CallMeMaybe(g);

	//return 0;
//}

extern "C" double CallMeMaybe();

int main()
{
	double myfloat = CallMeMaybe();

	return 0;

}