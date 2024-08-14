import java.util.Scanner;

public class Ex_01 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Digite o nome do produto: ");
        String nomeProduto = input.nextLine();

        System.out.print("Digite o valor unitário do produto: ");
        double valorUnitario = input.nextDouble();

        double taxaDesconto = 0.09;

        double desconto = valorUnitario * taxaDesconto;

        double valorComDesconto = valorUnitario - desconto;

        System.out.printf("Produto: %s%n", nomeProduto);
        System.out.printf("Valor original: R$ %.2f%n", valorUnitario);
        System.out.printf("Valor com desconto de 9%%: R$ %.2f%n", valorComDesconto);
    }
}
