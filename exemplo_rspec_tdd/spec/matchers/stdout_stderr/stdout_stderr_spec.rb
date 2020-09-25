describe "StdOut e StdErr" do
    it { expect{puts "Claudio"}.to output.to_stdout }
    it { expect{print "Claudio"}.to output("Claudio").to_stdout  }
    it { expect{puts "Claudio Santos"}.to output(/Claudio/).to_stdout }

    it { expect{warn "erro"}.to output.to_stderr }
    it { expect{warn "erro"}.to output("erro\n").to_stderr }
    it { expect{warn "erro grotesco"}.to output(/grotesco/).to_stderr }
end
