require 'spec_helper'

describe Cnab::Detalhe::SegmentoT do
  describe "#initialize" do
    before :each do
      @segmento_t = Cnab::Detalhe::SegmentoT.new(LINE)
    end
    
    it "should set #banco" do
      @segmento_t.banco.should == "012"
    end
  end
end