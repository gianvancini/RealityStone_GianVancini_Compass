capitais = Hash.new

capitais = {acre: 'Rio Branco', sao_paulo: 'Sao Paulo'}

capitais[:minas_gerais] = 'Belo Horizonte'

puts capitais

puts capitais.keys
puts capitais.values

capitais.delete(:acre)

puts capitais

capitais[:minas_gerais] #retorna Belo Horizonte

capitais.size
capitais.empty?