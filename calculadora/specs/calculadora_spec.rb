require "rspec"
require_relative "../src/calculadora"

describe("Calculadora") do
    calculadora = Calculadora.new

    it("Deve somar dois números inteiros positivos") do
        expect(calculadora.adicao(4, 5)).to eq 9
    end

    it("Deve somar dois números inteiros negativos") do
        expect(calculadora.adicao(-4, -5)).to eq -9
    end

    it("Deve somar um número inteiro positivo com zero") do
        expect(calculadora.adicao(4, 0)).to eq 4
    end

    it("Deve somar um número inteiro negativo com zero") do
        expect(calculadora.adicao(-4, 0)).to eq -4
    end

    it("Deve somar um número inteiro negativo com um número inteiro positivo") do
        expect(calculadora.adicao(-4, 5)).to eq 1
    end

    it("Deve somar dois números decimais") do
        expect(calculadora.adicao(4.3, 5.2)).to eq 9.5
    end
end