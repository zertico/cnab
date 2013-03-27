require 'spec_helper'

describe Cnab::TrailerArquivo do
  describe "#initialize" do
    context "with a non valid line" do
      it "should raise an error" do
        lambda { Cnab::TrailerArquivo.new("12345") }.should raise_error(Cnab::Exceptions::LineNotParseable)
      end
    end

    context "with a valid line" do
      before :each do
        @trailer_arquivo = Cnab::TrailerArquivo.new(LINE)
      end

      it "should set #banco" do
        @trailer_arquivo.banco.should == "012"
      end

      it "should set #lote" do
        @trailer_arquivo.lote.should == "3456"
      end

      it "should set #registro" do
        @trailer_arquivo.registro.should == "7"
      end

      it "should set #res_cnab1" do
        @trailer_arquivo.res_cnab1.should == "890123456"
      end

      it "should set #qtd_lotes" do
        @trailer_arquivo.qtd_lotes.should == "789012"
      end

      it "should set #qtd_registros" do
        @trailer_arquivo.qtd_registros.should == "345678"
      end

      it "should set #qtd_contas" do
        @trailer_arquivo.qtd_contas.should == "901234"
      end

      it "should set #res_cnab2" do
        @trailer_arquivo.res_cnab2.should == "5678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789"
      end
    end
  end
end