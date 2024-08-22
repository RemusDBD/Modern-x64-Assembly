#include <iostream>

class MyClass;

extern "C" void SomeFunction(MyClass& m);

class MyClass
{
private:
	int i;

public:
	int GetI()
	{
		return i;
	}

};

#pragma pack(1)
//struct MyStruct
//{
//	char c;		// Offset 0
//	int i;		// Offset 1
//	short s;	// Offset 5
//	double d;	// Offset 7
				// Total: 15 Bytes
//};



int main() {

	//std::cout << "Size is: " << sizeof(MyStruct) << std::endl;

	//std::cin.get();

	//SomeFunction();

	MyClass m;

	SomeFunction(m);

	std::cout << "Value: " << m.GetI() << std::endl;

	std::cin.get();

	return 0;
}