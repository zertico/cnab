require 'spec_helper'

describe Cnab::Config do
  describe "#initialize" do
    it "should load the yml" do
      Cnab::Config.new('08.7', 'header_arquivo').instance_variable_get("@definition").should be_an_instance_of(Hash)
    end
  end

  describe "#method_missing" do
    it "should return the value of the method as key in the hash" do
      Cnab::Config.new('08.7', 'header_arquivo').banco.should == Range.new(0, 2)
    end
  end
end