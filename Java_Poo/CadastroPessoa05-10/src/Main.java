import javax.swing.*;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        ArrayList<PessoaFisica> listaPf = new ArrayList<>();
        PessoaFisica metodoPf = new PessoaFisica();

        System.out.println("Bem vindo ao Sistema de cadastro de Pessoa Fisica e Juridica!!"); // sout + tab
        //JOptionPane.showMessageDialog(null,"Bem vindo ao Sistema de cadastro de Pessoa Fisica e Juridica!!");
        Scanner scanner = new Scanner(System.in); // caso nao importar, ctrl + espaco em cima do Scanner
        int opcao; //scanner e meu console // nextInt funciona para ler e passar para a proxima linha de codigo

        do {
            System.out.println(" Escolha uma opção: 1 - Pessoa Fisica / 2 - Pessoa Juridica / 0 - Sair ");
            opcao = scanner.nextInt();

            switch (opcao) {
                case 1:
                    int opcaoPf;

                    do {
                        System.out.println("Escolha uma Opção: 1 - Cadastrar Pessoa Fisica / 2 - Listar Pessoa Fisica / 0 - Voltar ao menu anterior ");
                        opcaoPf = scanner.nextInt();

                        switch (opcaoPf) {
                            case 1:
                                PessoaFisica novapf = new PessoaFisica();
                                Endereco novoEndPf = new Endereco();


                                System.out.println("Digite o nome da pessoa fisica: ");
                                novapf.nome = scanner.next();

                                System.out.println("Digite o CPF: ");
                                novapf.cpf = scanner.next();

                                System.out.println("Digite o rendimento mensal (Digitw somente numero): ");
                                novapf.rendimento = scanner.nextInt();

                                System.out.println("Digite a data de Nascimento(dd/MM/aaaa): ");
                                LocalDate date = LocalDate.parse(scanner.next(), DateTimeFormatter.ofPattern("dd/MM/yyyy)"));
                                Period periodo = Period.between(date, LocalDate.now());

                                novapf.dataNascimento = date;

                                if (periodo.getYears() >= 18){
                                    System.out.println("A pessoa tem mais de 18 anos");
                                }else{
                                    System.out.println("A pessoa tem menos de 18 anos. Retornando menu...");
                                    break; // para voltar ao menu anterior
                                }

                                System.out.println("Digite o logradouro: ");
                                novoEndPf.logradouro = scanner.next();

                                System.out.println("Digite o numero: ");
                                novoEndPf.numero = scanner.next();

                                System.out.println("Este e endereco comercial? S/N ");
                                String endCom;
                                endCom = scanner.next();

                                if (endCom.equalsIgnoreCase("S")){
                                    novoEndPf.enderecoComercial = true;
                                } else{
                                    novoEndPf.enderecoComercial = false;
                                }

                                novapf.endereco = novoEndPf;

                                listaPf.add(novapf);

                                System.out.println("Cadastro realizado com sucesso!!");

                                break;



                            case 2:
                                if (listaPf.size() > 0){
                                    for (PessoaFisica cadaPf: listaPf){
                                        System.out.println();
                                        System.out.println("Nome:"+ cadaPf.nome);
                                        System.out.println("CPF:" + cadaPf.cpf);
                                        System.out.println("Endereço" + cadaPf.endereco.logradouro + " , " + cadaPf.endereco.numero);
                                        System.out.println("Data de Nascimento" + cadaPf.dataNascimento.format(DateTimeFormatter.ofPattern("dd/MM/yyyy")));
                                        System.out.println("Imposto a ser pago" + metodoPf.CalcularImposto((cadaPf.rendimento)));
                                        System.out.println();
                                        System.out.println("Digite 0 para continuar");
                                        System.out.println();
                                    }

                                    opcaoPf = scanner.nextInt();

                                }else{
                                    System.out.println("Lista vazia!");
                                }
                                break;



                            case 0:
                                System.out.println("Voltando ao menu anterior !!");
                                break;

                            default:
                                System.out.println("Opção invalida, digite uma Opção valida");
                                break;

                        }

                    } while (opcaoPf != 0);
                    break;


                case 2:
                    System.out.println("");
                    break;

                case 0:
                    System.out.println("Obrigado por usar nosso sistema, volte sempre !!");
                    //JOptionPane.showMessageDialog(null,"Obrigado por usar nosso sistema, volte sempre !!");

                    break;

                default:
                    System.out.println("Opção invalida, digite uma Opção valida");
                    //JOptionPane.showMessageDialog(null,"Opção, digite uma Opção valida");
                    break;

            }

        } while (opcao != 0);

    }
}