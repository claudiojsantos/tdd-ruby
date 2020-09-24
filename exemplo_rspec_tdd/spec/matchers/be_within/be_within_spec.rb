describe "be_within" do
    it { expect(11.6).to be_within(0.5).of(12) }
    it { expect([11.6, 12.3, 12.5]).to all(be_within(0.5).of(12)) }
end
