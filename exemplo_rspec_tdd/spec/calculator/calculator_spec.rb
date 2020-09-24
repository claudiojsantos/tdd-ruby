require 'calculator'

describe Calculator, "Projeto Calculadora" do
    describe '#sum' do
        it 'with positive numbers' do
            result = subject.sum(6, 7)
            expect(result).to eq(13) 
        end
    
        it 'with negative and positive numbers' do
            result = subject.sum(-4, 6)
            expect(result).to eq(2)
        end

        it 'with negative numbers' do
            result = subject.sum(-6, -3)
            expect(result).to eq(-9)
        end
    end

    describe '#div' do
        it 'divided with zero' do
            expect { subject.div(3, 0) }.to raise_error(ZeroDivisionError)
            expect { subject.div(3, 0) }.to raise_error("divided by 0")
            expect { subject.div(3, 0) }.to raise_error(ZeroDivisionError, "divided by 0")
            expect { subject.div(3, 0) }.to raise_error(/divided/)
        end
    end
    
end
