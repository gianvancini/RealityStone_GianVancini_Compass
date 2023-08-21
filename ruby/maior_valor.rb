numbers = {A: 10, B: 30, C: 20, D: 25, E: 15}

maior = 0
key_m = 0

numbers.each do |key, value|
    if value > maior
        maior = value
        key_m = key
    end
end

print "O maior número é #{maior} com a chave #{key_m}"