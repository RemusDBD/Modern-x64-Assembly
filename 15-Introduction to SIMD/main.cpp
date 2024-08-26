// Remember turn MASM off when running the below sample individually 
//#pragma comment(lib, "legacy_stdio_definitions.lib")
//#include <intrin.h>

//int main() {

	//__m256d a = { 0.0, 1.0, 2.0, 3.0 };
	//__m256d b = { 2.0, 4.0, 6.0, 8.0 };
	//__m256d c;

	//c = _mm256_add_pd(a, b);

//}

#include <iostream>

using namespace std;

extern "C" void TestSIMD();

int main() {

	TestSIMD();

	return 0;

}

