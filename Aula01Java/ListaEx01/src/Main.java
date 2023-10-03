import java.util.Scanner;

public class Main {
    //Vamos usar o primeiro exemplo de JS

    public static void main(String[] args) {
//        System.out.printf("Thiago!");
        System.out.println("Digite o salario: ");
        Scanner leitor = new Scanner(System.in);

        //final = const
        final float  salario = leitor.nextFloat();

        if (salario < 1000) {
//            float novoSalario = salario * 1.1f;
            var novoSalario = salario * 1.1f;

            System.out.println(novoSalario);
            //atalho sout + enter
        } else {
            System.out.println("Salario dentro da faixa !");
        }
    }
}