`import java.util.Scanner;

public class NumerosPares {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int inicio = 0;
        int fim = 0;
        
        // Solicita o intervalo ao usuário
        try {
            System.out.print("Digite o início do intervalo: ");
            inicio = scanner.nextInt();

            System.out.print("Digite o fim do intervalo: ");
            fim = scanner.nextInt();
            
            if (inicio > fim) {
                System.out.println("O início do intervalo não pode ser maior que o fim do intervalo.");
                return;
            }
        } catch (Exception e) {
            System.out.println("Entrada inválida. Por favor, insira números inteiros.");
            return;
        }
        
        // Imprime os números pares no intervalo
        System.out.println("Números pares no intervalo de " + inicio + " a " + fim + ":");
        int numeroAtual = inicio;

        while (numeroAtual <= fim) {
            if (numeroAtual % 2 == 0) {
                System.out.println(numeroAtual);
            }
            numeroAtual++;
        }
    }
}

 