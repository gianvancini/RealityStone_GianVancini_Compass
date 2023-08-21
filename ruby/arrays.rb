estados = []

estados.push("RS")
estados.push("SC")
estados.push("PR") #insere por ultimo

estados.insert(0, "SP") #insere na posicao

puts estados 

puts estados[1] #seleciona a posiçao
puts estados[-2] #seleciona a posiçao
puts estados[1..3] #seleciona da pos 1 a pos 3
puts estados.first #seleciona o primeiro
puts estados.last #seleciona o ultimo
puts estados.count #retorna o total do array
puts estados.empty? #retorna se esta vazio
puts estados.include?("SC") #retorna se SC esta no array

estados.delete_at(2) #deleta a posiçao
estados.pop #deleta o ultimo
estados.shift #deleta o primeiro
puts estados
