/*--------------------------------------------------------* 
* Disciplina: Programaçao Estruturada e Modular * * Prof. Carlos Veríssimo * 
*--------------------------------------------------------* 
* Objetivo do Programa: Representar um tabuleiro de xadrez 
*utilizando vetores unidimensionais na linguagem C *
* Data - 23/08/2024 * 
* Autor: Erick Diego de Jesus Soares* 
*--------------------------------------------------------*/
#include <stdio.h>
int main()
{
    //Declaração de variaveis
    char *tabuleiro[64];    
    char *casas[] = {"PT1", "PC1", "PB1", "PD", "PR", "PB2", "PC2", "PT2",
                    "PP1", "PP2", "PP3", "PP4", "PP5", "PP6", "PP7", "PP8",
                    "X", "X", "X", "X", "X", "X", "X", "X",
                    "X", "X", "X", "X", "X", "X", "X", "X",
                    "X", "X", "X", "X", "X", "X", "X", "X",
                    "X", "X", "X", "X", "X", "X", "X", "X",
                    "BP1", "BP2", "BP3", "BP4", "BP5", "BP6", "BP7", "BP8",
                    "BT1", "BC1", "BB1", "BD", "BR", "BB2", "BC2", "BT2"};
    int cont1, cont2, cont3, cont4, i;
    cont1=0;
    cont2=0;
    cont3=0;
    cont4=0;
    //atribuição dos valores das peças
    for (int i = 0; i < 64; i++) {
        tabuleiro[i] = casas[i];
    }

    printf("    A     B     C     D     E     F     G     H \n");
    printf("  -------------------------------------------------\n");
    //Este while irá ser executado 8 vezes, uma pra cada linha
    while(cont1<8){
        //Exibe o numero da linha,. Toda vez que reiniciar o while é subtraido valor referente a quantidade de loop.
        printf("%i |", 8-cont1);
        //Este while tambem irá ser executado 8 vezes, mas dessa vez na construção das casas da linha
        while(cont2<8){
          //o contador 4 é responsavel por determinarse a casa é preta u branca, verificando se a casa é par ou impar.
          //inicialmente, o valor de cont4 é 0, então a casa é branca
          if(cont4==0 | cont4==2| cont4==4 | cont4==6 | cont4==8){
            printf("\033[40;37m %-3s \033[0m|", tabuleiro[cont3]);
          }
          if(cont4==1 | cont4==3| cont4==5 | cont4==7 | cont4==9){
            printf("\033[48;5;8m %-3s \033[0m|", tabuleiro[cont3]);
          }
            //o contador 2, assim como o contador 1, serve para parar o loop após a oitava casas
            //por outro lado, o contador 3 irá atribuir nas casas seu respectivos valores.
            cont2++;
            cont3++;
            cont4++;
        }
        printf(" %i", 8-cont1);
        printf("\n  -------------------------------------------------\n");
      //após o fim do while acima, é verificado o valor de cont4, como no ultimo loop também é somado 1 à variavel, o valor da variavel será 8, não 7.
      //Os if's abaixo iráo resetar o valor de cont4 para 1 ou 0, desta forma, definindo a ordem da sequecia de cores das casas.
        if(cont4==8){
          cont4=1;
        }
        if(cont4==7 | cont4==9){
          cont4=0;
        }
        cont1++;
        cont2=0;
        //o contador 3 não é reiniciado, pois irá contar até 64
    }
    printf("    A     B     C     D     E     F     G     H \n");
    
    scanf("%i", &i);

    return 0;
}
