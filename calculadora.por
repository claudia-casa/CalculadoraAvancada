programa {
  funcao inicio() {
    menu()
  }

  funcao esperarTeclarEnter(cadeia msg) {
    caracter c

    escreva(msg)
    escreva("\npressione <ENTER>")
    leia(c)
  }

  // variáveis de visibilidade global (dentro de toda a estrutura programa{})
  real n1, n2, resultado

  funcao lerNumeros() {
    escreva("\n  Digite um número: ")
    leia(n1)
    escreva("  Digite outro número: ")
    leia(n2)
  }

  funcao calcular(cadeia operacao) {
    se (operacao == "+") {
      resultado = n1 + n2
    } senao se (operacao == "-") {
      resultado = n1 - n2
    }
  }

  funcao exibirResultado() {
    escreva("  Resultado: ", resultado, "\n")
    esperarTeclarEnter(" ")
  }

  funcao somar() {
    lerNumeros()
    calcular("+")
    exibirResultado()
  }

  funcao subtrair() {
    lerNumeros()
    calcular("-")
    exibirResultado()
  }

  funcao multiplicar() {
    lerNumeros()
    resultado = n1 * n2
    exibirResultado()
  }

  funcao dividir() {
  lerNumeros()
  se (n2 == 0) {
    escreva(" Erro: Divisão por zero!\n")
    esperarTeclarEnter(" ")
  } senao {
    resultado = n1 / n2
    exibirResultado()
  }
}
  funcao calcularResto() {
  lerNumeros()
  resultado = n1 % n2
  exibirResultado()
}

funcao verificarImpar() {
  escreva("\n Digite um número: ")
  leia(n1)
  se (n1 % 2 == 0) {
    escreva(" ", n1, " é par\n")
  } senao {
    escreva(" ", n1, " é ímpar\n")
  }
  esperarTeclarEnter(" ")
}

  funcao menu() {
    inteiro opcao = -1
    
    enquanto (opcao != 0) {
      limpa()
      escreva("### CALCULADORA SIMPLES ###\n\n")
      escreva("Escolha uma operacao:\n")
      escreva("  0. Encerrar aplicativo\n")
      escreva("  1. Somar\n")
      escreva("  2. Subtrair\n")
      escreva("  3. Multiplicar\n")
      escreva("  4. Dividir\n")
      escreva("  5. Resto\n")
      escreva("  6. Número Ímpar\n")
      escreva("Opção: ")  
      leia(opcao)
      
      se (opcao == 0) {
        // não faz nada
      } senao se (opcao == 1) {
        somar()
      } senao se (opcao == 2) {
        subtrair()
      } senao se (opcao == 3) {
        multiplicar()
      } senao se (opcao == 4) {
        dividir()
      } senao se (opcao == 5) {
        calcularResto()
      }senao se (opcao == 6) {
        verificarImpar()
      } senao {
        esperarTeclarEnter("\nOpção inválida")
      }
    }
  }
}
