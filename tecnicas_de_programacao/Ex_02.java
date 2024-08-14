import java.util.Scanner;

public class Ex_02 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Digite o valor do salário mínimo: R$ ");
        double salarioMinimo = input.nextDouble();

        System.out.print("Digite o valor do salário da pessoa: R$ ");
        double salarioPessoa = input.nextDouble();

        double salariosMinimos = salarioPessoa / salarioMinimo;

        System.out.printf("A pessoa ganha %.2f salários mínimos.%n", salariosMinimos);
    }
}
