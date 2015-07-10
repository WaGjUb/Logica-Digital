//data dd/mm/aa para ddmm,aa

#include<stdio.h>
#include<math.h>
#define BITS 127
#define E 7
#define M 23

int expoente=0;
int ex=0;

void tobin(double data){

	long long int bin=0, inteiro, i=0;
	double flutuante;

	inteiro = data;
	flutuante = data - inteiro;
	//printf("num=%lld", inteiro);
	printf("\nData em binário: ");
	while (inteiro != 0)
	{
		bin += (inteiro%2)*pow(10,i);
		//	printf("\n--%lld--", inteiro%2);	
		inteiro /= 2;
		i++;
		//	printf("\ninteiro: %lld", inteiro);	
	}
	expoente=(i-1)+BITS; //aqui recebe o numero de casas que deve andar com a virgula
	ex=i-1;	

	printf("%ld",bin);
	printf(",");

	while (flutuante > 0)
	{
	flutuante *= 2;
	inteiro = flutuante;
	flutuante -= inteiro;
	printf("%lld", inteiro);
	}
}


void tofloat(double data){
	
	short sinal;
	int num, cont=0, rpt, i, exp2, j=0;
	double flutuante;
	long long int bin=0, backup;
	
	exp2 = ex;
	num = data;	
	flutuante = data - num;
	printf("\nData IEEE 754: ");
	if (data>=0)
	{
	sinal = 0;
	}
	else{
	sinal = 1;
	}
	printf("%d", sinal);
setbuf(stdout,NULL);
	
	for (i=E; i>=0; i--)
	{
		if (expoente >= pow(2,i))
		{
		printf("1");
		expoente -= pow(2,i);
		} 
		else
		{
		printf("0");
		}
		
	}
	
	i=0;

	while (num != 0)
	{
	bin += (num%2)*pow(10,i);
      	num /= 2;
	i++;
	}
	bin -= pow(10,exp2); //tira o primeiro 1 da parte inteira para formar a mantissa
	backup = bin;	
	while (backup != 0)
	{
	backup = backup/10;
	j++;
	}	
	i -= j+1;
	for (j=0; j<i; j++)
	{
	printf("0");
	}
	
	printf("%lld", bin);
	
	rpt = M - exp2;
	
		for (i=0; i<rpt; i++)
	{
	flutuante *= 2;
        num = flutuante;
        flutuante -= num;
        printf("%d", num);
	}
printf("\n");	
}

int main() {

	int dia,mes,ano;
	double data;

	printf("Digite sua data de nascimento no formato DD/MM/AA: ");
	scanf("%d/%d/%d", &dia, &mes, &ano);

	data = dia*100 + mes + ano/100.;
	printf("Data em ponto flutuante: %lf", data);

	tobin(data);
	
	tofloat(data);

	return(0);
}
