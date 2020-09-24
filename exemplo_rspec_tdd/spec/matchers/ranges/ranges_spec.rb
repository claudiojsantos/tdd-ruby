describe (1..5), 'Ranges' do
    it '#cover' do
        expect(subject).to cover(2, 3)
        expect(subject).not_to cover(0, 6)
    end

    it { expect(subject).to cover(2, 3) } 

    it { is_expected.to cover(2, 3) }
end
