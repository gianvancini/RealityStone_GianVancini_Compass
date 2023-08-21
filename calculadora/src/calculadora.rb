class Calculadora    
    def adicao(a , b)
        (a + b).round(2)
    end

    def subtracao(a , b)
        (a - b).round(2)
    end

    def divisao(a , b)
        if b == 0
            "Não é possivel dividir um número por zero!"
        else
            (a / b).round(2)
        end
    end

    def multiplicacao(a , b)
        (a * b).round(2)
    end

    def raiz_quadrada(a)
        if a < 0
            "Um número negativo não tem raiz!"
        else
            (a ** (1.0/2)).round(2)
        end
    end

    def raiz_n(a, b)
        if b == 0
            "O radical não pode ser zero!"
        elsif a < 0 && (b % 2 == 0)
            "Um número negativo não tem raiz com um radical par!"
        elsif a < 0 && (b % 2 == 1)
            -((-a) ** (1.0/b)).round(2)
        else
            (a ** (1.0/b)).round(2)
        end
    end

    def potenciacao(a, b)
        if b == 0
            1
        else
            (a ** b).round(4)
        end
    end

    def fatorial(a)
        if a % 1 != 0
            "Número decimal não tem fatorial!"
        elsif a < 0
            "Número negativo não tem fatorial!"
        elsif a == 0 || a ==1
            1
        else
            total = 1
            while a > 1
                total = total * a 
                a = a - 1
            end
            total
        end
    end

    def fibonacci(a)
        if a % 1 != 0 || a < 0
            "Digite um número inteiro e positivo"
        elsif a == 0
            0
        elsif a == 1
            1
        else
            fibonacci(a-1) + fibonacci(a-2)
        end
    end

    def seno(a)
        angulo = a * Math::PI / 180
        (Math.sin(angulo)).round(4)
    end

    def coseno(a)
        angulo = a * Math::PI / 180
        (Math.cos(angulo)).round(4)
    end

    def tangente(a)
        angulo = a * Math::PI / 180
        (Math.tan(angulo)).round(4)
    end

    def area_circulo(a)
        (Math::PI * a * a).round(2)
    end
end
