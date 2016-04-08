require "rspec"

require "./lexiconomitron"

RSpec.describe "Lexiconomitron" do 

    it "removes every letter t from the input" do
      @lexi = Lexiconomitron.new
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end
  
    it "Removes t, reverses and returns 1st & last" do
      @lexi = Lexiconomitron.new
      expect(@lexi.shazam(["This","is","a","boring","test"])).to eq(["sih","se"])
    end

  	it "Removes words 4 characters or more in length then removes t's" do
      @lexi = Lexiconomitron.new
      expect(@lexi.oompa_loompa(["if", "you", "wanna", "be", "my", "lover"])).to eq(["if", "you", "be", "my"])
    end

  end