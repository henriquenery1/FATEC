#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct Funcionario {
    int codigo;
    int tipoSalario;
    double salarioBase;
    int numeroFilhos;
    double salarioBruto;
    char nome[50];
    struct Funcionario* next;
} Funcionario;

Funcionario* createFuncionario(int codigo, int tipoSalario, double salarioBase, int numeroFilhos, const char* nome) {
    Funcionario* newFuncionario = (Funcionario*)malloc(sizeof(Funcionario));
    if (newFuncionario == NULL) {
        printf("Erro ao alocar memória\n");
        exit(1);
    }
    newFuncionario->codigo = codigo;
    newFuncionario->tipoSalario = tipoSalario;
    newFuncionario->salarioBase = salarioBase;
    newFuncionario->numeroFilhos = numeroFilhos;
    snprintf(newFuncionario->nome, sizeof(newFuncionario->nome), "%s", nome);

    // Calcular o salário bruto
    int horista = 220;
    int diarista = 30;
    int mensalista = 1;

    if (tipoSalario == 1) {
        newFuncionario->salarioBruto = salarioBase * horista;
    } else if (tipoSalario == 2) {
        newFuncionario->salarioBruto = salarioBase * diarista;
    } else if (tipoSalario == 3) {
        newFuncionario->salarioBruto = salarioBase * mensalista;
    } else {
        printf("Tipo de salário inválido\n");
        free(newFuncionario);
        exit(1);
    }

    newFuncionario->next = NULL;
    return newFuncionario;
}

void appendFuncionario(Funcionario** head, int codigo, int tipoSalario, double salarioBase, int numeroFilhos, const char* nome) {
    Funcionario* newFuncionario = createFuncionario(codigo, tipoSalario, salarioBase, numeroFilhos, nome);
    if (*head == NULL) {
        *head = newFuncionario;
    } else {
        Funcionario* temp = *head;
        while (temp->next != NULL) {
            temp = temp->next;
        }
        temp->next = newFuncionario;
    }
}

int getListSize(Funcionario* head) {
    int size = 0;
    Funcionario* temp = head;
    while (temp != NULL) {
        size++;
        temp = temp->next;
    }
    return size;
}

void bubbleSort(Funcionario* funcionarios[], int tamanho) {
    int i, j;
    Funcionario* temp;

    for (i = 0; i < tamanho - 1; i++) {
        for (j = i + 1; j < tamanho; j++) {
            if (funcionarios[i]->codigo > funcionarios[j]->codigo) {
                // Troca os ponteiros
                temp = funcionarios[i];
                funcionarios[i] = funcionarios[j];
                funcionarios[j] = temp;
            }
        }
    }
}

void printFuncionarios(Funcionario* funcionarios[], int tamanho) {
    for (int i = 0; i < tamanho; i++) {
        printf("Código: %d\n", funcionarios[i]->codigo);
        printf("Nome: %s\n", funcionarios[i]->nome);
        printf("Tipo de Salário: %d\n", funcionarios[i]->tipoSalario);
        printf("Salário Base: %.2lf\n", funcionarios[i]->salarioBase);
        printf("Número de Filhos: %d\n", funcionarios[i]->numeroFilhos);
        printf("Salário Bruto: %.2lf\n", funcionarios[i]->salarioBruto);
        printf("-----------------------------------------\n");
    }
}

int main(void) {
    int codigo, tipoSalario, numeroFilhos;
    double salarioBase;
    char nome[50];
    int continuar = 1;

    Funcionario* head = NULL;

    while (continuar) {
        printf("\nDigite o código do funcionário: ");
        scanf("%d", &codigo);

        printf("Digite o tipo de salário [1] Horista [2] Diarista [3] Mensalista: ");
        scanf("%d", &tipoSalario);

        printf("Digite o número de filhos: ");
        scanf("%d", &numeroFilhos);

        printf("Digite o salário base: ");
        scanf("%lf", &salarioBase);

        printf("Digite o nome do funcionário: ");
        scanf(" %[^\n]", nome); // Lê a string com espaços

        appendFuncionario(&head, codigo, tipoSalario, salarioBase, numeroFilhos, nome);

        printf("Deseja adicionar outro funcionário? (1 para sim, 0 para não): ");
        scanf("%d", &continuar);
    }

    int tamanho = getListSize(head);

    // Criar um array de ponteiros para facilitar a ordenação
    Funcionario* funcionarios[tamanho];
    Funcionario* temp = head;
    for (int i = 0; i < tamanho; i++) {
        funcionarios[i] = temp;
        temp = temp->next;
    }

    bubbleSort(funcionarios, tamanho);

    printf("Lista de Funcionários:\n");
    printFuncionarios(funcionarios, tamanho);

    // Liberar a memória alocada
    Funcionario* current;
    while (head != NULL) {
        current = head;
        head = head->next;
        free(current);
    }

    return 0;
}