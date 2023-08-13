print 'Digite o primeiro numero: '
number1 = gets.chomp.to_i

print 'Digite o segundo numero: '
number2 = gets.chomp.to_i

print 'Digite o terceiro numero: '
number3 = gets.chomp.to_i

array = []
array.push(number1)
array.push(number2)
array.push(number3)

print array

array.map! do |number|
    number*2
end

print array