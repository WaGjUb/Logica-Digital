#include "divisorbib.h"

int main()
{
	char word1[100]="010", word2[100]="001";
	Stack *s0, *s1, *resp;

printf("Cria S0 S1 res\n");	
s0 = CreateStack(); //cria stack s0
s1 = CreateStack(); //cria stack s1
resp = CreateStack(); //cria stack resp
printf("criado---\n");

printf("s0: ");
StackPrint(s0); //printa stack s0
printf("s1: ");
StackPrint(s1); //printa stack s1
printf("resp: ");
StackPrint(resp); //printa stack resp

printf("Adiciona s0\n");
AddData(s0, word1); //adiciona a word1 em s0
printf("adiciona s1\n");
AddData(s1, word2); //word2 em s1

printf("stack s0: ");
StackPrint(s0); //printa Stack s0

printf("stack s1: ");
StackPrint(s1); //print Stack s1

//printf("Add 15 bits em s1: ");
//AddBit(s1,1);
//AddBit(s1,1);
//AddBit(s1,1);
//AddBit(s1,1);
//AddBit(s1,1);
//AddBit(s1,1);
//AddBit(s1,1);
//AddBit(s1,1);
//AddBit(s1,1);
//AddBit(s1,1);
//AddBit(s1,1);

//StackPrint(s1);

//printf("removido: %d\n", BinShift(s1, 0));
//printf("removido: %d\n", BinShift(s1, 0));
//printf("removido: %d\n", BinShift(s1, 0));
//printf("removido: %d\n", BinShift(s1, 0));
//printf("removido: %d\n", BinShift(s1, 0));
//printf("removido: %d\n", BinShift(s1, 1));
//printf("removido: %d\n", BinShift(s1, 1));

printf("s0/s1\n");
BinDiv(s0, s1, resp);
printf("resultado: ");
StackPrint(s0);
printf("resto: ");
StackPrint(resp);



//int SizeEqualizer(Stack* bin1, Stack* bin2); 
//int AddData(Stack* s, char* data);
//bool AddBit(Stack* s, int bit);
//bool BinSub(Stack* bin1, Stack* bin2, Stack* answer);
//bool BinAdd(Stack* bin1, Stack* bin2, Stack* answer);
//int BinShift(Stack* bin,int bit); //shift dir 
//void BinDiv(Stack* bin1, Stack* bin2, Stack* answer);
//void StackPrint(Stack* s);
return(0);
}
