require "cpf_cnpj"


print 'Digite um cpf: '
number = gets.chomp
cpf = CPF.new(number)
 
valida = CPF.valid?(number)
puts valida
print cpf.formatted