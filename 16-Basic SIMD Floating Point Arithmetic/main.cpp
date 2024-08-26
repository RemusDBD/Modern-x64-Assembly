#include <iostream>
#include <intrin.h>


// {V} [ADD/SUB/MUL/DIV] [S/P] [S/D]
// ¡õ Single floating point: ¡õ
// 
// int main() {

	//__m128 v1 = { 1, 2, 3, 4 }; // Define a vector

	//__m128 v2 = { 5, 6, 7, 8 }; // Define another

	//__m128 v3 = _mm_add_ps(v1, v2); // Add them together using ADDPS
	//__m128 v3 = _mm_sub_ps(v1, v2); // Subtract them together using SUBPS
	//__m128 v3 = _mm_mul_ps(v1, v2); // Multiply them together using MULPS
	//__m128 v3 = _mm_div_ps(v1, v2); // Subtract them together using DIVPS

	//float f[4];

	// Store the results in an array:
	// _mm_storer_ps(f, v3); // Aligned store! f must be aligned to 16 bits

	//_mm_storer_ps(f, v3); // Unaligned, f need not be aligned

	// Print the results
	//std::cout << "Value: " << f[0] << std::endl;
	//std::cout << "Value: " << f[1] << std::endl;
	//std::cout << "Value: " << f[2] << std::endl;
	//std::cout << "Value: " << f[3] << std::endl;

	//return 0;
//}

// ¡õ Double floating point: ¡õ

 //int main() {

	//__m128d v1 = { 1.0, 2.0 }; // Define a vector

	//__m128d v2 = { 3.0, 4.0 }; // Define another

	//__m128d v3 = _mm_add_pd(v1, v2); // Add them together using ADDPD
	//__m128d v3 = _mm_sub_pd(v1, v2); // Subtract them together using SUBPD
	//__m128d v3 = _mm_mul_pd(v1, v2); // Multiply them together using MULPD
	//__m128d v3 = _mm_div_pd(v1, v2); // Subtract them together using DIVPD

	//double d[2];

	 //_mm_storer_pd(d, v3); //	Store results a C++ array:

	// Print the results
	//std::cout << "Value: " << d[0] << std::endl;
	//std::cout << "Value: " << d[1] << std::endl;


	//return 0;
//}

 // ¡õ AVX floating point: ¡õ

 //int main() {

	// __m256 v1 = { 1, 2, 3, 4, 5, 6, 7, 8 }; // Define a vector

	 // __m256 v2 = { 9, 10, 11, 12, 13, 14, 15, 16 }; // Define another

	 //__m256 v3 = _mm256_add_ps(v1, v2); // Add them together using ADDPS
	 //__m256 v3 = _mm256_sub_ps(v1, v2); // Subtract them together using SUBPS
	 //__m256 v3 = _mm256_mul_ps(v1, v2); // Multiply them together using MULPS
	 //__m256 v3 = _mm256_div_ps(v1, v2); // Subtract them together using DIVPS

	 //float f[8];

	 //_mm256_storeu_ps(f, v3); //	Store results a C++ array:

	 // Print the results
	 //std::cout << "Value: " << f[0] << std::endl;
	 //std::cout << "Value: " << f[1] << std::endl;
	 //std::cout << "Value: " << f[2] << std::endl;
	 //std::cout << "Value: " << f[3] << std::endl;
	 //std::cout << "Value: " << f[4] << std::endl;
	 //std::cout << "Value: " << f[5] << std::endl;
	 //std::cout << "Value: " << f[6] << std::endl;
	 //std::cout << "Value: " << f[7] << std::endl;


	 //return 0;
// }

 // ¡õ AVX double floating point: ¡õ

 // int main() {

	// __m256d v1 = { 1, 2, 3, 4 }; // Define a vector

	// __m256d v2 = { 5, 6, 7, 8 }; // Define another

	 //__m256d v3 = _mm256_add_pd(v1, v2); // Add them together using ADDPD
	 //__m256d v3 = _mm256_sub_pd(v1, v2); // Subtract them together using SUBPD
	 //__m256d v3 = _mm256_mul_pd(v1, v2); // Multiply them together using MULPD
	 //__m256d v3 = _mm256_div_pd(v1, v2); // Subtract them together using DIVPD

	 //double d[4];

	 //_mm256_storeu_pd(d, v3); // Unaligned, d need not be aligned

	 // Print the results
	 //std::cout << "Value: " << d[0] << std::endl;
	 //std::cout << "Value: " << d[1] << std::endl;
	 //std::cout << "Value: " << d[2] << std::endl;
	 //std::cout << "Value: " << d[3] << std::endl;


	 //return 0;
 //}

 // ¡õ AVX512 double floating point: ¡õ !!make sure your CPU runs AVX512!!

 //int main() {

	//__m512d v1 = { 1, 2, 3, 4, 5, 6, 7, 8 }; // Define a vector

	//__m512d v2 = { 9, 10, 11, 12, 13, 14, 15, 16 }; // Define another

	 //__m512d v3 = _mm512_add_pd(v1, v2); // Add them together using ADDPD
	 //__m512d v3 = _mm512_sub_pd(v1, v2); // Subtract them together using SUBPD
	 //__m512d v3 = _mm512_mul_pd(v1, v2); // Multiply them together using MULPD
	 //__m512d v3 = _mm512_div_pd(v1, v2); // Subtract them together using DIVPD

	 //double d[8];

	 //_mm512_storeu_pd(d, v3); // Unaligned, d need not be aligned

	 // Print the results
	 // std::cout << "Value: " << d[0] << std::endl;
	 // std::cout << "Value: " << d[1] << std::endl;
	 // std::cout << "Value: " << d[2] << std::endl;
	 // std::cout << "Value: " << d[3] << std::endl;
	 // std::cout << "Value: " << d[4] << std::endl;
	 // std::cout << "Value: " << d[5] << std::endl;
	 // std::cout << "Value: " << d[6] << std::endl;
	 // std::cout << "Value: " << d[7] << std::endl;



	 // return 0;
// }

// ¡õ Run asm.asm : ¡õ

  using namespace std;

  extern "C" void GoASM();

  int main() {
	  GoASM();

	  return 0;
 }