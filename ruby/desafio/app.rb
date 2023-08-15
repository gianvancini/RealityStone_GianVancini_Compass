require_relative 'produto'
require_relative 'mercado'

produto_1 = Produto.new()
produto_1.nome = "Caderno"
produto_1.preco = 12.99


mercado = Mercado.new(produto_1)