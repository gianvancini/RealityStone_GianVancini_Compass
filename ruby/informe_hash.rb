collection = {}
3.times do
    print 'Digite uma chave para a Hash: '
    key= gets.chomp
    print 'Digite um valor para a Hash: '
    value= gets.chomp
    collection[key] = value
end

print collection
