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
        printf("Digite o codigo: ");
        scanf("%d", &codigo);
        printf("\n");

        if (codigo < 1) {
          printf("Tipo de codigo inválido\n");
          exit(1);
        } else if (codigo > 1000) {
          printf("Tipo de codigo inválido\n");
          exit(1);
        };

        printf("\n-----------------------------------------\n");
        printf("Digite o nome: ");
        scanf(" %[^\n]", nome);

        printf("-----------------------------------------\n");
        printf("[1] horista \n[2] diarista \n[3] mensalista");
        printf("\n");
        printf("Digite o tipo de salario: ");
        scanf("%d", &tipoSalario);

        double salarioBruto;
        int horista = 220;
        int diarista = 30;
        int mensalista = 1;

        if (tipoSalario == 1) {
          salarioBruto = salarioBase * horista;
        } else if (tipoSalario == 2) {
          salarioBruto = salarioBase * diarista;
        } else if (tipoSalario == 3) {
          salarioBruto = salarioBase * mensalista;
        } else {
          printf("Tipo de salário inválido\n");
          exit(1);
        }

        printf("\n-----------------------------------------\n");
        printf("Digite o numero de filhos: ");
        scanf("%d", &numeroFilhos);

        printf("\n-----------------------------------------\n");
        printf("Digite o salario base: ");
        scanf("%lf", &salarioBase);

        printf("\n-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#\n \n \n");

        double taxaInss;

        if (salarioBruto <= 3500) {
          taxaInss = salarioBruto * 0.08;
        } else if (salarioBruto > 3500 && salarioBruto < 5800) {
          taxaInss = salarioBruto * 0.09;
        } else if (salarioBruto > 5800) {
          taxaInss = salarioBruto * 0.1;
        } else {
          printf("Erro\n");
        }

        double impostoRenda;
        double salarioDescontadoInss = salarioBruto - taxaInss;

        if (salarioDescontadoInss <= 6200) {

        } else if (salarioDescontadoInss > 6200 && salarioDescontadoInss < 9400) {
          impostoRenda = salarioDescontadoInss * 0.05;

        } else if (salarioDescontadoInss > 9400) {
          impostoRenda = salarioDescontadoInss * 0.1;
        } else {
          printf("Erro\n");
        }

        double salarioFamilia = numeroFilhos * 20;

        double salarioLiquido =
            salarioBruto - taxaInss - impostoRenda + salarioFamilia;

        appendFuncionario(&head, codigo, tipoSalario, salarioBase, numeroFilhos, nome);

        printf("\n\n-#-#-#-#-#-#-#-#-ATENÇÃO-#-#-#-#-#-#-#-#-#\n");
        printf("Deseja adicionar outro funcionário?\n (1 para sim, 0 para não): ");
        printf("\n-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#\n");
        scanf("%d", &continuar);
        if (continuar != 1) {
           printf("TCHAU\n\n\n");

          printf("Lista de Funcionários:\n");
          break;
        }
    }

    int tamanho = getListSize(head);

    Funcionario* funcionarios[tamanho];
    Funcionario* temp = head;
    for (int i = 0; i < tamanho; i++) {
        funcionarios[i] = temp;
        temp = temp->next;
    }

    bubbleSort(funcionarios, tamanho);

    printf("Lista de Funcionários:\n");
    printFuncionarios(funcionarios, tamanho);

    return 0;
}
