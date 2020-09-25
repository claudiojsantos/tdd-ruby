describe "Matchers de Comparação" do
    it '>' do
        expect(5).to be > 1 
    end

    it '>=' do
        expect(5).to be >= 2
        expect(5).to be >= 5
    end

    it '<' do
        expect(1).to be < 5
    end

    it '<=' do
        expect(1).to be <= 5
        expect(1).to be <= 1
    end

    it 'be_between inclusive' do
        expect(5).to be_between(2, 6).inclusive  
    end

    it 'be_between exclusive' do
        expect(3).to be_between(1, 4).exclusive
    end
    
    # it 'be_between exclusive with fail', :aggregate_failures do
    #     expect(3).to be_between(1, 4).exclusive
    #     expect(0).to be_between(1, 4).exclusive
    #     expect(7).to be_between(1, 4).exclusive
    # end

    it 'match' do
        expect('claudio@sistnet.com.br').to match(/..@../)
    end

    it 'start_with' do
        expect("Claudio Santos").to start_with("Claudio") 
        expect([1, 2, 3]).to start_with(1) 
    end

    it 'end_with' do
        expect("Claudio Santos").to end_with("Santos") 
        expect([1, 2, 3]).to end_with(3)
    end
end
