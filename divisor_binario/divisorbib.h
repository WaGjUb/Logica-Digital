#ifndef __divisorbib__
#define __divisorbib__

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

typedef enum 
{
	false=0, true
} bool;

typedef struct node
{
	int bit;
	struct node *next, *prev;
}Node;

typedef struct stack
{
	int size;
	bool block; //não permite que altere o size
	Node* first;
	Node* last;
}Stack;



Stack* CreateStack();
int SizeEqualizer(Stack* bin1, Stack* bin2); 
int AddData(Stack* s, char* data);
bool AddBit(Stack* s, int bit);
bool BinSub(Stack* bin1, Stack* bin2, Stack* answer);
bool BinAdd(Stack* bin1, Stack* bin2, Stack* answer);
int BinShift(Stack* bin,int bit); //shift dir 
void BinDiv(Stack* bin1, Stack* bin2, Stack* answer);
void StackPrint(Stack* s);
#endif
