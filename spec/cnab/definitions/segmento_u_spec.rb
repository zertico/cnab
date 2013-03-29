require 'spec_helper'

describe Cnab::Definitions::SegmentoU do
  let(:object) { Object.new }

  describe "#initialize" do
    it "should load segmento_u.yml" do
      Cnab::Definitions::SegmentoU.new('08.7').instance_variable_get("@definition").should be_an_instance_of(Hash)
    end
  end

  describe "#method_missing" do
    it "should return the value of the method as key in the hash" do
      Cnab::Definitions::SegmentoU.new('08.7').banco.should == Range.new(0, 2)
    end
  end
end