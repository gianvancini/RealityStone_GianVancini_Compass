def potencia(number, pot)
    number**pot
end

puts "**** Calculadora exponencial ****"
print 'Digite um numero: '
number = gets.chomp.to_i
print 'Digite o expoente: '
pot = gets.chomp.to_i

puts "o resultado da potencia é #{potencia(number, pot)}"