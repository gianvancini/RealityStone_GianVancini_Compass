loop do
    puts '************** Calculadora **************'
    puts 'Digite ( + ) para fazer uma soma.'
    puts 'Digite ( - ) para fazer uma subtração.'
    puts 'Digite ( * ) para fazer uma multiplicação.'
    puts 'Digite ( / ) para fazer uma divisão.'
    puts 'Digite ( q ) para sair.'
    print 'Qual operação deseja fazer? '
    operacao = gets.chomp
  
    if operacao == "q"
      break
    elsif operacao == "+" || operacao == "-" || operacao == "*" || operacao == "/"
      print 'Digite o primeiro numero: '
      number1 = gets.chomp.to_i
  
      print 'Digite o segundo numero: '
      number2 = gets.chomp.to_i
      
      case operacao
      when "+"
        soma = number1 + number2
        puts "O resultado da soma entre os números é #{soma}"
        puts ''
      when "-"
        subtracao = number1 - number2
        puts "O resultado da subtração entre os números é #{subtracao}"
        puts ''
      when "*"
        multiplicacao = number1 * number2
        puts "O resultado da multiplicação entre os números é #{multiplicacao}"
        puts ''
      when "/"
        divisao = number1 / number2
        puts "O resultado da divisão entre os números é #{divisao}"
        puts ''
      end
    else
      puts "Opção inválida!"
      puts ''
    end
end
  