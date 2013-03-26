require 'spec_helper'

describe Cnab::Retorno do
  describe "#initialize" do
    context "without params" do
      before :each do
        @retorno = Cnab::Retorno.new
      end

      it "should set #header_arquivo as nil" do
        @retorno.header_arquivo.should be_nil
      end

      it "should set #header_lote as nil" do
        @retorno.header_lote.should be_nil
      end

      it "should set #trailer_arquivo as nil" do
        @retorno.trailer_arquivo.should be_nil
      end

      it "should set #trailer_lote as nil" do
        @retorno.trailer_lote.should be_nil
      end

      it "should set #detalhes as an empty array" do
        @retorno.detalhes.should == []
      end
    end

    context "with params" do
      before :each do
        @retorno = Cnab::Retorno.new({  :header_arquivo => "header_arquivo",
                                        :header_lote => "header_lote",
                                        :trailer_arquivo => "trailer_arquivo",
                                        :trailer_lote => "trailer_lote",
                                        :detalhes => ["detalhe1"] })
      end

      it "should set #header_arquivo" do
        @retorno.header_arquivo.should == "header_arquivo"
      end

      it "should set #header_lote" do
        @retorno.header_lote.should == "header_lote"
      end

      it "should set #trailer_arquivo" do
        @retorno.trailer_arquivo.should == "trailer_arquivo"
      end

      it "should set #trailer_lote" do
        @retorno.trailer_lote.should == "trailer_lote"
      end

      it "should set #detalhes" do
        @retorno.detalhes.should == ["detalhe1"]
      end
    end
  end
end