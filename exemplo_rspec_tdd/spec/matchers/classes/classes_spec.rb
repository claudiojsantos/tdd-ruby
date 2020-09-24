require 'string_vazia'

describe "Classe" do
    it 'be_instance_of' do # Classe Mãe
        expect(10).to be_instance_of(Integer) 
    end

    it 'be_kind_of' do # Pode Ser Herança
        str = StringVazia.new
        expect(str).to be_kind_of(String)
        expect(str).to be_kind_of(StringVazia)
        expect(10).to be_kind_of(Integer)
    end

    it "respond_to" do
        expect("ruby").to respond_to(:count)  
        expect("ruby").to respond_to(:upcase)
    end

    it 'be_an / be_a' do
        str = StringVazia.new

        expect(str).to be_an(StringVazia)
        expect(str).to be_an(String)
        
        expect(str).to be_a(StringVazia)
        expect(str).to be_a(String)
    end
end
