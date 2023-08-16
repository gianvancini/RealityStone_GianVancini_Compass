require "rspec"
require_relative "../src/calculadora"

describe "Calculadora" do
    
    calculadora = Calculadora.new

    describe "Adição" do
        it "Deve somar dois números inteiros positivos" do
            expect(calculadora.adicao(4, 5)).to eq 9
        end

        it "Deve somar dois números inteiros negativos" do
            expect(calculadora.adicao(-4, -5)).to eq -9
        end

        it "Deve somar um número inteiro positivo com zero" do
            expect(calculadora.adicao(4, 0)).to eq 4
        end

        it "Deve somar um número inteiro negativo com zero" do
            expect(calculadora.adicao(-4, 0)).to eq -4
        end

        it "Deve somar um número inteiro negativo com um número inteiro positivo" do
            expect(calculadora.adicao(-4, 5)).to eq 1
        end

        it "Deve somar dois números decimais" do
            expect(calculadora.adicao(4.3, 5.2)).to eq 9.5
        end

        it "Deve somar um numero inteiro positivo com um número decimal" do
            expect(calculadora.adicao(7, 5.6)).to eq 12.6
        end
    end

    describe "Subtracao" do
        it "Deve subtrair dois números inteiros positivos" do
            expect(calculadora.subtracao(10, 6)).to eq 4
        end

        it "Deve subtrair dois números inteiros negativos" do
            expect(calculadora.subtracao(-10, -6)).to eq -4
        end

        it "Deve subtrair um número inteiro positivo com zero" do
            expect(calculadora.subtracao(10, 0)).to eq 10
        end

        it "Deve subtrair um número inteiro negativo com zero" do
            expect(calculadora.subtracao(-10, 0)).to eq -10
        end

        it "Deve subtrair um número inteiro negativo com um número inteiro positivo" do
            expect(calculadora.subtracao(-10, 6)).to eq -16
        end

        it "Deve subtrair dois números decimais" do
            expect(calculadora.subtracao(10.2, 6.3)).to eq 3.9
        end

        it "Deve subtrair um numero inteiro positivo com um número decimal" do
            expect(calculadora.subtracao(9, 4.6)).to eq 4.4
        end
    end

    describe "Divisao" do
        it "Deve dividir dois números inteiros positivos" do
            expect(calculadora.divisao(15, 5)).to eq 3
        end

        it "Deve dividir dois números inteiros negativos" do
            expect(calculadora.divisao(-15, -5)).to eq 3
        end

        it "Erro ao dividir um número inteiro positivo com zero" do
            expect(calculadora.divisao(15, 0)).to include "Não é possivel dividir um número por zero!"
        end

        it "Erro ao dividir um número inteiro negativo com zero" do
            expect(calculadora.divisao(-15, 0)).to include "Não é possivel dividir um número por zero!"
        end

        it "Deve dividir um número inteiro negativo com um número inteiro positivo" do
            expect(calculadora.divisao(-15, 5)).to eq -3
        end

        it "Deve dividir dois números decimais" do
            expect(calculadora.divisao(15.3, 5.8)).to eq 2.64
        end

        it "Deve dividir um numero inteiro positivo com um número decimal" do
            expect(calculadora.divisao(10, 2.4)).to eq 4.17
        end
    end

    describe "Multiplicacao" do
        it "Deve multiplicar dois números inteiros positivos" do
            expect(calculadora.multiplicacao(8, 7)).to eq 56
        end

        it "Deve multiplicar dois números inteiros negativos" do
            expect(calculadora.multiplicacao(-15, -4)).to eq 60
        end

        it "Deve multiplicar um número inteiro positivo com zero" do
            expect(calculadora.multiplicacao(7, 0)).to eq 0
        end

        it "Deve multiplicar um número inteiro negativo com zero" do
            expect(calculadora.multiplicacao(-12, 0)).to eq 0
        end

        it "Deve multiplicar um número inteiro negativo com um número inteiro positivo" do
            expect(calculadora.multiplicacao(-11, 5)).to eq -55
        end

        it "Deve multiplicar dois números decimais" do
            expect(calculadora.multiplicacao(10.2, 8.8)).to eq 89.76
        end

        it "Deve multiplicar um numero inteiro positivo com um número decimal" do
            expect(calculadora.multiplicacao(5, 2.5)).to eq 12.5
        end
    end

    describe "Radiciacao" do
        it "Deve calcular a raiz de um números inteiro positivo" do
            expect(calculadora.raiz_quadrada(9)).to eq 3
        end

        it "Erro ao calcular a raiz de um números inteiro negativo" do
            expect(calculadora.raiz_quadrada(-25)).to include "Um número negativo não tem raiz!"
        end

        it "Deve calcular a raiz de zero" do
            expect(calculadora.raiz_quadrada(0)).to eq 0
        end

        it "Deve calcular a raiz de um número decimal" do
            expect(calculadora.raiz_quadrada(10.2)).to eq 3.19
        end
    end

    describe "Radiciacao por um radical qualquer" do
        it "Deve calcular a raiz de dois com o radical e o radicando inteiros positivos" do
            expect(calculadora.raiz_n(8, 3)).to eq 2
        end

        it "Deve calcular a raiz com o radicando inteiro positivo e o radical inteiro negativo" do
            expect(calculadora.raiz_n(8, -3)).to eq 0.50
        end

        it "Deve calcular a raiz com o radicando inteiro negativo e o radical inteiro positivo e impar" do
            expect(calculadora.raiz_n(-25, 5)).to eq -1.90
        end

        it "Erro ao calcular a raiz com o radicando inteiro negativo e o radical inteiro positivo e par"  do
            expect(calculadora.raiz_n(-12, 4)).to include "Um número negativo não tem raiz com um radical par!"
        end

        it "Deve calcular a raiz com o radicando zero e o radical inteiro positivo" do
            expect(calculadora.raiz_n(0, 2)).to eq 0
        end

        it "Erro ao calcular a raiz com o radicando inteiro positivo e o radical zero" do
            expect(calculadora.raiz_n(9, 0)).to include "O radical não pode ser zero!"
        end

        it "Deve calcular a raiz com o radicando decimal positivo e o radical decimal" do
            expect(calculadora.raiz_n(15.2, 2.8)).to eq 2.64
        end

        it "Deve calcular a raiz de com o radicando inteiro positivo e o radical decimal" do
            expect(calculadora.raiz_n(18, 3.2)).to eq 2.47
        end
    end

    describe "Potenciacao" do
        it "Deve calcular a potenciação de dois números inteiros positivos" do
            expect(calculadora.potenciacao(8, 3)).to eq 512
        end

        it "Deve calcular a potenciação de dois números inteiros negativos" do
            expect(calculadora.potenciacao(-2, -3)).to eq -0.125
        end

        it "Deve calcular a potenciação de um número inteiro positivo elevado a zero" do
            expect(calculadora.potenciacao(15, 0)).to eq 1
        end

        it "Deve calcular a potenciação de zero elevado a um número inteiro positivo" do
            expect(calculadora.potenciacao(0, 3)).to eq 0
        end

        it "Deve calcular a potenciação de um número inteiro negativo elevado a um número inteiro positivo" do
            expect(calculadora.potenciacao(-6, 3)).to eq -216
        end

        it "Deve calcular a potenciação de dois números decimais" do
            expect(calculadora.potenciacao(3.8, 0.9)).to eq 3.3251
        end

        it "Deve calcular a potenciação de um número inteiro positivo elevado um número inteiro decimal positivo" do
            expect(calculadora.potenciacao(12, 2.6)).to eq 639.5452
        end
    end

    describe "Fatorial" do
        it "Deve calcular o fatorial de um numero inteiro positivo" do
            expect(calculadora.fatorial(5)).to eq 120
        end

        it "Erro ao calcular o fatorial de um numero inteiro negativo" do
            expect(calculadora.fatorial(-4)).to include "Número negativo não tem fatorial!"
        end

        it "Deve calcular o fatorial de zero" do
            expect(calculadora.fatorial(0)).to eq 1
        end

        it "Deve calcular o fatorial de 1" do
            expect(calculadora.fatorial(1)).to eq 1
        end

        it "Erro ao calcular o fatorial de um numero decimal" do
            expect(calculadora.fatorial(12.5)).to include "Número decimal não tem fatorial!"
        end
    end

    describe "Fibonacci" do
        it "Deve retornar o valor de fibonacci para a posiçao informada, sendo um numero inteiro positivo" do
            expect(calculadora.fibonacci(8)).to eq 21
        end

        it "Erro ao calcular o valor de fibonacci para a posiçao informada, informando numero inteiro negativo" do
            expect(calculadora.fibonacci(-4)).to include "Digite um número inteiro e positivo"
        end

        it "Deve retornar o valor de fibonacci para a posiçao informada, informando o zero" do
            expect(calculadora.fibonacci(0)).to eq 0
        end

        it "Deve retornar o valor de fibonacci para a posiçao informada, informando o número 1" do
            expect(calculadora.fibonacci(1)).to eq 1
        end

        it "Erro ao calcular o valor de fibonacci para a posiçao informada, informando um decimal" do
            expect(calculadora.fibonacci(12.5)).to include "Digite um número inteiro e positivo"
        end
    end

    describe "Seno" do
        it "Deve calcular o seno de um numero inteiro positivo" do
            expect(calculadora.seno(500)).to eq 0.6428
        end

        it "Deve calcular o seno de um numero inteiro negativo" do
            expect(calculadora.seno(-20)).to eq -0.3420
        end

        it "Deve calcular o seno de zero" do
            expect(calculadora.seno(0)).to eq 0
        end

        it "Deve calcular o seno de um numero decimal positivo" do
            expect(calculadora.seno(175.3)).to eq 0.0819
        end
    end

    describe "Coseno" do
        it "Deve calcular o coseno de um numero inteiro positivo" do
            expect(calculadora.coseno(320)).to eq 0.7660
        end

        it "Deve calcular o coseno de um numero inteiro negativo" do
            expect(calculadora.coseno(-90)).to eq 0
        end

        it "Deve calcular o coseno de zero" do
            expect(calculadora.coseno(0)).to eq 1
        end

        it "Deve calcular o coseno de um numero decimal positivo" do
            expect(calculadora.coseno(50.9)).to eq 0.6307
        end
    end

    describe "Tangente" do
        it "Deve calcular a tangente de um numero inteiro positivo" do
            expect(calculadora.tangente(800)).to eq 5.6713
        end

        it "Deve calcular a tangente de um numero inteiro negativo" do
            expect(calculadora.tangente(-275)).to eq 11.4301
        end

        it "Deve calcular a tangente de zero" do
            expect(calculadora.tangente(0)).to eq 0
        end

        it "Deve calcular a tangente de um numero decimal positivo" do
            expect(calculadora.tangente(108.23)).to eq -3.0362
        end
    end

    describe "Area Circulo" do
        it "Deve calcular area do circulo informando um raio inteiro positivo" do
            expect(calculadora.area_circulo(8)).to eq 201.06
        end

        it "Deve calcular area do circulo informando um raio inteiro negativo" do
            expect(calculadora.area_circulo(-15)).to eq 706.86
        end

        it "Deve calcular area do circulo informando um raio zero" do
            expect(calculadora.area_circulo(0)).to eq 0
        end

        it "Deve calcular area do circulo informando um raio decimal postivo" do
            expect(calculadora.area_circulo(12.5)).to eq 490.87
        end
    end
end