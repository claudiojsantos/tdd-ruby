describe "Ruby on Rails" do
    it { is_expected.to start_with("Ruby").and end_with("Rails") }

    around(:each) do |test|
        puts "antes"
        test.run
        puts "depois"
    end

    it { expect(frutas).to eq('banana').or eq('laranja').or eq('uva') }

    # def frutas
    #     %w(banana laranja uva).sample
    # end
end
