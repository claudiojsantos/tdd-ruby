require 'pessoa'

describe "Atributos" do
    
    it 'have_attributes' do
        pessoa = Pessoa.new
        pessoa.nome = "Cláudio"
        pessoa.idade = 46

        expect(pessoa).to have_attributes(nome: 'Cláudio', idade: 46)
        expect(pessoa).to have_attributes(nome: starting_with('C'), idade: be >= 40) 
        expect(pessoa).to have_attributes(nome: a_string_starting_with('C'), idade: a_value >= 40)
    end
end
