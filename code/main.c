// 64-bit assembly

#include <stdio.h>           

//c++ specific: external function prototype to link the asm file
//extern "C" int getAssemblyValue();
//extern "C" int getAssemblyMultiplication();

int main()
{
	printf("Value from assembler function: %d\n", getAssemblyValue());
	printf("Value from mul assembler function: %d\n", getAssemblyMultiplication());

	system("PAUSE");

	return 0;
}
