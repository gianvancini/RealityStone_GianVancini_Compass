print 'Digite um numero: '
number1 = gets.chomp.to_i

print 'Digite outro numero: '
number2 = gets.chomp.to_i

soma = number1 + number2
subtracao = number1 - number2
multiplicacao = number1 * number2
divisao = number1 / number2

puts "O resultado da soma entre os numeros é #{soma}"
puts "O resultado da subtrção entre os numeros é #{subtracao}"
puts "O resultado da multiplicação entre os numeros é #{multiplicacao}"
puts "O resultado da divisao entre os numeros é #{divisao}"