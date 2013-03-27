require 'spec_helper'

describe Cnab::Detalhe::SegmentoTU do
  let(:segmento_t) { Cnab::Detalhe::SegmentoT.new(LINE) }
  let(:segmento_u) { Cnab::Detalhe::SegmentoU.new(LINE) }

  describe "#method_missing" do
    before :each do
      @segmento_t_u = Cnab::Detalhe::SegmentoTU.new(segmento_t, segmento_u)
    end

    it "should call attributes on segmento_t object when it exists" do
      @segmento_t_u.should respond_to(:ag_recebimento)
    end

    it "should call attributes on segmento_u object when it exists" do
      @segmento_t_u.should respond_to(:valor_iof)
    end

    it "should raise an error if no segmento has the attribute" do
      lambda { @segmento_t_u.valor_total }.should raise_error(NoMethodError)
    end
  end
end