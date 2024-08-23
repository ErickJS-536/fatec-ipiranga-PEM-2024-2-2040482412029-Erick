#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

int main() {
    int N, i, j=0;
    float nota, soma, maior, menor, nota_final;
    nota_final = 0;
    //Um loop que irá ocorrer até ser atribuido N=0
    while (1) {
        scanf("%d", &N);
        if (N == 0) break;  // Encerra o loop se N=0
        if (N <= 2){
            //Um loop que irá obrigar o usuario a digitar um valor N>2
            while(1){
                if (N > 2) break;  //Encerra o loop se N>2
                system("cls");
                printf("É necessario apresentar mais que duas(2) notas, caso contrario, ambas serão descatadas!");
                printf("\nInsira outro valor que atenda ao requisito:\n");
                scanf("%d", &N);
            }
        }
        
        //Um vetor de tamanho N que irá amarzenar as notas do aluno
        float notas[N];
        //Todas as notas digitadas irão ser somadas a essa variavel, por isso seu valor inicial igual a 0
        soma = 0;
        //Inicializa maior com um valor pequeno e menor com um valor grande para garantir que
        //os valores digitados sejam menor ou maior que seus respectivos valor inicial
        maior = -INT_MAX;
        menor = INT_MAX;
        
        // Leitura das N notas
        for (i = 0; i < N; i++) {
            scanf("%f", &notas[i]);
            //Após a leitura da nota inserida, seu valor é somado a variavel soma
            soma = soma + notas[i];
            //Atribui a maior o maior valor e a menor o menor
            if (notas[i] > maior) {
                maior = notas[i];
            }
            if (notas[i] < menor) {
                menor = notas[i];
            }
        }
        
        // Subtrai a maior e a menor nota da soma total
        soma = soma-(maior + menor);
        
        // Armazena a nota final do teste
        nota_final = nota_final+soma;

        // Imprime a nota do teste atual
        printf("Nota do teste %d = %.1f\n", j + 1, soma);
        j++;
    }
    
    // Imprime a nota final do candidato
    printf("Nota final do candidato = %.1f\n", nota_final);

    return 0;
}
