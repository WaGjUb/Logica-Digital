#include "divisorbib.h"

Stack* CreateStack()
{
		Stack* new;

		new = (Stack*) malloc(sizeof(Stack));
		new->size = 0;
		new->first = NULL;
		new->last = NULL;
		new->block = false;
		return(new);
}

int SizeEqualizer(Stack* bin1, Stack* bin2)
{
		if((bin1->block == true) || (bin2->block == true))
		{
			return (((bin1->size) > (bin2->size)) ? bin1->size : bin2->size);
		}


		int size;
		size = bin1->size - bin2->size;

		if (size < 0)
		{
				size *= -1;
		}
		
		/*iguala o tamanho de bits*/
		if (size != 0)
		{  
				int i;
				if (bin1->size > bin2->size)
				{
						for (i=0; i<size; i++)
						{
								AddBit(bin2, 0);
						}
				}

				else
				{
						for (i=0; i<size; i++)
						{
								AddBit(bin1, 0);
						}
				}
		}
		return(bin1->size);
}

int AddData(Stack* s, char* data) //retorna 1 se a pilha estava vazia e 0 se foi concatenada com o que ja tinha
{
		int size, verificador, val;
		size = strlen(data);

		if (s->size == 0)
		{
				verificador = 1;
		}
		else
		{
				verificador = 0;
		}

		/*insere o valor binário na pilha*/
		while (size!=0)
		{
				Node *aux; 
				aux = (Node*) malloc(sizeof(Node)); //cria o nó



				/*converte para inteiro*/
				val = data[size-1] - '0';

				/*verifica se o valor convertido é binario*/
				if ((val!=1) && (val!=0))
				{
						verificador =-1;
						return(verificador);
				}



				aux->bit = val; //lê de trás para frente 
				aux->next = s->first;
				aux->prev = NULL;

				/*se for primeiro elemento o last aponta para este nó*/
				if (s->size == 0)
				{
						s->last = aux;
				}
				else
				{	
						s->first->prev = aux; //o antigo primeiro elemento, aponta para o anterior aux
				}

				s->first = aux;	
				s->size++;
				size--;
		}

		return (verificador);
}

bool AddBit(Stack* s, int bit)
{
		
		//if ((bit != 0) && (bit != 1))
		//{
				//return(false);
		//}

		Node* aux = (Node*) malloc(sizeof(Node)); //cria o nó

		aux->bit = bit; 
		aux->next = s->first;
		aux->prev = NULL;

		/*se for primeiro elemento o last aponta para este nó*/
		if (s->size == 0)
		{
				s->last = aux;
		}
		else
		{	
				s->first->prev = aux; //o antigo primeiro elemento, aponta para o anterior aux
		}

		s->first = aux;	
		s->size++;

		return(true);

}

bool BinSub(Stack* bin1, Stack* bin2, Stack* resp) 
{
		Node *redutor1, *redutor2;
		int size, v1, v2, k;
		bool carry=false;

		Stack *answer, *clean;
		
		answer = CreateStack();

		size = SizeEqualizer(bin1, bin2);

		redutor1 = bin1->last;
		redutor2 = bin2->last;
		for(k=0; k<size; k++)
		{

				v1 = redutor1->bit;
				v2 = redutor2->bit;

				/*calcula a saída*/
				if (((v1 == 1) && (v2 == 0) && (carry == false)) || ((v1 == 0) && (v2 == 0) && (carry == true)) || ((v1 == 1) && (v2 == 1) && (carry == true)) || ((v1 == 0) && (v2 == 1) && (carry == false))) 
				{
						AddBit(answer, 1);
				}
				else
				{
						AddBit(answer,0);
				}

				/*calcula o carry*/
				if (((v1 == 0) && (carry == true)) || ((v1 == 0) && (v2 == 1)) || ((v2 == 1) && (carry == true)))
				{
						carry = true;
				}
				else
				{
						carry = false;
				}
				redutor1 = redutor1->prev;
				redutor2 = redutor2->prev;
		}
		
		clean = resp;
		free(clean);
		resp->size = answer->size;
		resp->first = answer->first;
		resp->last = answer->last;

		return (carry);
}


bool BinAdd(Stack* bin1, Stack* bin2, Stack* answer)
{

		Node *redutor1;
	   	Node *redutor2;
		int size, v1, v2, k;
		bool carry=false;
		Stack *resp;
		Stack *clean;


		if ((bin1->size) != (bin2->size))
		{
			size = SizeEqualizer(bin1, bin2);	
		}
		else
		{
			size = bin1->size;
		}

		redutor1 = bin1->last;
		redutor2 = bin2->last;

		resp = CreateStack();
		for(k=0; k<size; k++)
		{

				v1 = redutor1->bit;
				v2 = redutor2->bit;

				/*calcula a saída*/
				if (((v1 == 1) && (v2 == 0) && (carry == false)) || ((v1 == 0) && (v2 == 0) && (carry == true)) || ((v1 == 1) && (v2 == 1) && (carry == true)) || ((v1 == 0) && (v2 == 1) && (carry == false))) 
				{
						AddBit(resp, 1);
				}
				else
				{
						AddBit(resp,0);
				}


				/*calcula o carry*/
				if (((v1 == 1) && (carry == true)) || ((v1 == 1) && (v2 == 1)) || ((v2 == 1) && (carry == true)))
				{
						carry = true;
				}
				else
				{
						carry = false;
				}
				redutor1 = redutor1->prev;
				redutor2 = redutor2->prev;
		}
	if(carry == true)
	{
		AddBit(resp,1);
	}	
		clean = answer;
		free(clean);

		answer->size = resp->size;
		answer->first = resp->first;
		answer->last = resp->last;

		/*bool carry=false;*/


		/*if (((v1 == 1) && (v2 == 0) && (carry == false)) || ((v1 == 0) && (v2 == 0) && (carry == true)) || ((v1 == 1) && (v2 == 1) && (carry == true)) || ((v1 == 0) && (v2 == 1) && (carry == false))) */
		/*{*/
		/*AddBit(answer, 1);*/
		/*}*/
		/*else*/
		/*{*/
		/*AddBit(answer,0);*/
		/*}*/
		return(true);
}


int BinShift(Stack* s, int bit)
{
		int val;		
		Node *aux, *remove; 
		aux = (Node*) malloc(sizeof(Node)); //cria o nó

		aux->bit = bit; 
		aux->next = NULL;
		aux->prev = s->last;

		if (s->size == 0)
		{
				s->first = aux;
		}
		else
		{	
				s->last->next = aux; //o antigo primeiro elemento, aponta para o anterior aux
		}

		s->last = aux;	

		/*remove o primeiro elemento*/
		remove = s->first;
		s->first->prev = NULL;
		s->first = s->first->next;
		remove->next = NULL;
		remove->prev = NULL;
		val = remove->bit;
		free(remove);

		return (val);	
}	




void BinDiv(Stack* bin1, Stack* bin2, Stack* answer) // |c|answer|bin1|  <- binário  |c|resto|resultado| 
{
		int c=0, size, i;

		size = SizeEqualizer(bin1,bin2);

		SizeEqualizer(bin1, answer);

		bin1->block = true;
		bin2->block = true;
		answer->block = true;

		for (i=0; i<size; i++)
		{
				/*da o shift*/
				if (BinShift(bin1, 0))
				{
						if(BinShift(answer,1))
						{
								c=1;
						}
						else
						{
								c=0;
						}
				}
				else
				{
						if(BinShift(answer,0))
						{
								c=1;
						}
						else
						{
								c=0;
						}
				}

				/*subtrai e verifica se o primeiro bit é 1 ou 0*/
				if(BinSub(answer, bin2, answer) == true)
				{
						if (c==0)
						{
								BinAdd(answer,bin2, answer);
						}
						else
						{
							bin1->last->bit=1;
						}

				}
				else
				{
						if(c==1)
						{
								BinAdd(bin2, answer, answer);
						}
						else
						{
							bin1->last->bit=1;
						}
				}
		}
}

void StackPrint(Stack* s)
{
	Node* redutor;
	redutor = s->first;
	while (redutor != NULL)
	{
		printf("%d", redutor->bit);
		redutor = redutor->next;
	}
	printf("\n");
}
