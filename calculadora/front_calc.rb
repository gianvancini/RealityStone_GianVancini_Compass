require_relative "src/calculadora"

class Front_calculadora
    def initialize
        @calc = Calculadora.new
    end

    def entrada_dados
        puts "Qual operação você deseja realizar?"
        puts " 1. Adição"
        puts " 2. Subtração"
        puts " 3. Divisão"
        puts " 4. Multiplicação"
        puts " 5. Raiz Quadrada"
        puts " 6. Raiz com radical N"
        puts " 7. Potenciação"
        puts " 8. Fatorial"
        puts " 9. Fibonacci"
        puts "10. Seno"
        puts "11. Coseno"
        puts "12. Tangente"
        puts "13. Área de um circulo"
        puts " 0. Para sair" 

        operacao = gets.chomp.to_i

        case operacao
            when 1
                print "Digite o primeiro numero:"
                a = gets.chomp.to_f
                print "Digite o segundo numero:"
                b = gets.chomp.to_f
                puts @calc.adicao(a , b)
            when 2
                print "Digite o primeiro numero:"
                a = gets.chomp.to_f
                print "Digite o segundo numero:"
                b = gets.chomp.to_f
                puts @calc.subtracao(a , b)
            when 3
                print "Digite o primeiro numero:"
                a = gets.chomp.to_f
                print "Digite o segundo numero:"
                b = gets.chomp.to_f
                puts @calc.divisao(a , b)
            when 4
                print "Digite o primeiro numero:"
                a = gets.chomp.to_f
                print "Digite o segundo numero:"
                b = gets.chomp.to_f
                puts @calc.multiplicacao(a , b)
            when 5
                print "Digite um numero:"
                a = gets.chomp.to_f
                puts @calc.raiz_quadrada(a)
            when 6
                print "Digite o primeiro numero:"
                a = gets.chomp.to_f
                print "Digite o segundo numero:"
                b = gets.chomp.to_f
                puts @calc.raiz_n(a , b)
            when 7
                print "Digite o primeiro numero:"
                a = gets.chomp.to_f
                print "Digite o segundo numero:"
                b = gets.chomp.to_f
                puts @calc.potenciacao(a , b)
            when 8
                print "Digite um numero:"
                a = gets.chomp.to_i
                puts @calc.fatorial(a)
            when 9
                print "Digite uma posição para a sequencia:"
                a = gets.chomp.to_f
                puts @calc.fibonacci(a)
            when 10
                print "Digite um angulo:"
                a = gets.chomp.to_f
                puts @calc.seno(a)
            when 11
                print "Digite um angulo:"
                a = gets.chomp.to_f
                puts @calc.coseno(a)
            when 12
                print "Digite um angulo:"
                a = gets.chomp.to_f
                puts @calc.tangente(a)
            when 13
                print "Digite o raio do circulo:"
                a = gets.chomp.to_f
                puts @calc.area_circulo(a)
            when 0
                puts "Fechando calculadora..."
            else
                puts "Opção inválida!"
        end
    end
end

calculadora = Front_calculadora.new
calculadora.entrada_dados
