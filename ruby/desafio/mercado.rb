class Mercado
    def initialize(produto)
        @produto = produto
        comprar
    end 
    def comprar
        puts "Você comprou o produto #{@produto.nome} no valor de #{@produto.preco}"
    end
end