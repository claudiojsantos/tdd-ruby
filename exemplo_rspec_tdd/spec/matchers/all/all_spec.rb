describe "All" do
    it { expect([1, 3, 5]).to all((be_odd).and be_an(Integer)) } 
    it { expect(['Ruby', 'Rails']).to all(be_a(String).and include('R')) }
end
