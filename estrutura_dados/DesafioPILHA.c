#include <stdio.h>
#include <stdlib.h>

typedef struct {
    int *dados;
    int topo;
    int limite;
} Pilha;

Pilha criarPilha(int limite) {
    Pilha p;
    p.dados = (int*)malloc(limite * sizeof(int));
    if (p.dados == NULL) {
        printf("Erro ao alocar memória.\n");
        exit(1);
    }
    p.topo = -1;
    p.limite = limite;
    return p;
}

void empilhar(Pilha *p, int valor) {
    if (p->topo >= p->limite - 1) {
        printf("Overflow: Pilha cheia. Não é possível empilhar %d.\n", valor);
        return;
    }
    p->topo++;
    p->dados[p->topo] = valor;
    printf("Elemento %d empilhado com sucesso.\n", valor);
}

int desempilhar(Pilha *p) {
    if (p->topo < 0) {
        printf("Underflow: Pilha vazia. Não é possível desempilhar.\n");
        return -1;
    }
    int valor = p->dados[p->topo];
    p->topo--;
    printf("Elemento %d desempilhado com sucesso.\n", valor);
    return valor;
}

void liberarPilha(Pilha *p) {
    free(p->dados);
    p->dados = NULL;
    p->topo = -1;
    p->limite = 0;
}

int main() {
    int limite, escolha, valor;
    Pilha p;

    printf("Digite o limite da pilha: ");
    scanf("%d", &limite);
    p = criarPilha(limite);

    while (1) {
        printf("\nEscolha uma opção:\n");
        printf("1. Empilhar\n");
        printf("2. Desempilhar\n");
        printf("3. Sair\n");
        printf("Sua escolha: ");
        scanf("%d", &escolha);

        switch (escolha) {
            case 1:
                printf("Digite o valor a ser empilhado: ");
                scanf("%d", &valor);
                empilhar(&p, valor);
                break;
            case 2:
                desempilhar(&p);
                break;
            case 3:
                liberarPilha(&p);
                printf("Saindo do programa.\n");
                exit(0);
            default:
                printf("Escolha inválida.\n");
                break;
        }
    }

    return 0;
}
