// 64-bit assembly
#include <stdlib.h>
#include <stdio.h>           

//c++ specific: external function prototype to link the asm file
extern "C" int GetValueFromASM();
extern "C" int GetMulFromASM();

int main()
{
	printf("Value from assembler function: %d\n", GetValueFromASM());
	printf("Value from mul assembler function: %d\n", GetMulFromASM());

	system("PAUSE");

	return 0;
}
