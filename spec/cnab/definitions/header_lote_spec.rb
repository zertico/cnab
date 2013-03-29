require 'spec_helper'

describe Cnab::Definitions::HeaderLote do
  let(:object) { Object.new }

  describe "#initialize" do
    it "should load header_lote.yml" do
      Cnab::Definitions::HeaderLote.new('08.7').instance_variable_get("@definition").should be_an_instance_of(Hash)
    end
  end

  describe "#method_missing" do
    it "should return the value of the method as key in the hash" do
      Cnab::Definitions::HeaderLote.new('08.7').banco.should == Range.new(0, 2)
    end
  end
end