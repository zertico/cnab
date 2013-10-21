require 'spec_helper'

describe Cnab do
  describe "#parse" do
    context "withouth a file" do
      it "should raise an exception" do
        lambda { Cnab.parse }.should raise_error Cnab::Exceptions::NoFileGiven
      end
    end

    context "with a bad file" do
      it "should raise an exception" do
        lambda { Cnab.parse("spec/bad_cnab.txt") }.should raise_error Cnab::Exceptions::MissingLines
      end
    end

    it "should return a Retorno instance" do
      Cnab.parse("spec/cnab.txt").should be_an_instance_of(Cnab::Retorno)
    end

    it "should return a HeaderArquivo instance" do
      Cnab.parse("spec/cnab.txt").header_arquivo.should be_an_instance_of(Cnab::Line)
    end

    it "should return a HeaderLote instance" do
      Cnab.parse("spec/cnab.txt").header_lote.should be_an_instance_of(Cnab::Line)
    end

    it "should return an array of detalhes" do
      Cnab.parse("spec/cnab.txt").detalhes.should be_an_instance_of(Array)
    end

    it "should return a TrailerLote instance" do
      Cnab.parse("spec/cnab.txt").trailer_lote.should be_an_instance_of(Cnab::Line)
    end

    it "should return a TrailerArquivo instance" do
      Cnab.parse("spec/cnab.txt").trailer_arquivo.should be_an_instance_of(Cnab::Line)
    end

    context "with merge equal false" do
      it "should return an SegmentoT instance inside detalhes array" do
        Cnab.parse("spec/cnab.txt").detalhes.first.should be_an_instance_of(Cnab::Line)
      end
    end

    context "with merge equal true" do
      it "should return an SegmentoTU instance inside detalhes array" do
        Cnab.parse("spec/cnab.txt", true).detalhes.first.should be_an_instance_of(Cnab::MergedLines)
      end
    end
  end

  describe "parsed object" do
    it "should respond_to #densidade" do
      Cnab.parse("spec/cnab.txt").header_arquivo.densidade.should == "67890"
    end

    it "should respond_to #informacao1" do
      Cnab.parse("spec/cnab.txt").header_lote.informacao1.should == "3456789012345678901234567890123456789012"
    end

    it "should respond_to #id_titulo" do
      Cnab.parse("spec/cnab.txt").detalhes[0].id_titulo.should == "78901234567890123456"
    end

    it "should respond_to #valor_iof" do
      Cnab.parse("spec/cnab.txt").detalhes[1].valor_iof.should == "234567890123456"
    end

    it "should respond_to #qtd_registros" do
      Cnab.parse("spec/cnab.txt").trailer_lote.qtd_registros.should == "789012"
    end

    it "should respond_to #qtd_lotes" do
      Cnab.parse("spec/cnab.txt").trailer_arquivo.qtd_lotes.should == "789012"
    end

    context "with merged #detalhes" do
      it "should respond_to #id_titulo" do
        Cnab.parse("spec/cnab.txt", true).detalhes[0].id_titulo.should == "78901234567890123456"
      end

      it "should respond_to #valor_iof" do
        Cnab.parse("spec/cnab.txt", true).detalhes[0].valor_iof.should == "234567890123456"
      end
    end
  end
end