import java.util.Scanner;

public class Exercicio_4 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Digite a temperatura em graus Celsius: ");
        float temperaturaCelsius = input.nextFloat();

        float temperaturaFahrenheit = (9 * temperaturaCelsius + 160) / 5;

        System.out.printf("A temperatura em graus Fahrenheit é: %.2f%n", temperaturaFahrenheit);
    }
}
