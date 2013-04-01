require 'spec_helper'

describe Cnab do
  describe "#parse" do
    context "withouth file" do
      it "should raise an exception" do
        lambda { Cnab.parse }.should raise_error Cnab::Exceptions::NoFileGiven
      end
    end

    context "with a file" do
      context "and merge equal false" do
        it "should return a Retorno instance" do
          Cnab.parse("spec/cnab.txt").should be_an_instance_of(Cnab::Retorno)
        end

        it "should return a HeaderArquivo instance" do
          Cnab.parse("spec/cnab.txt").header_arquivo.should be_an_instance_of(Cnab::HeaderArquivo)
        end

        it "should return a HeaderLote instance" do
          Cnab.parse("spec/cnab.txt").header_lote.should be_an_instance_of(Cnab::HeaderLote::Cobranca)
        end

        it "should return an array of detalhes" do
          Cnab.parse("spec/cnab.txt").detalhes.should be_an_instance_of(Array)
        end

        it "should return an SegmentoT instance inside detalhes array" do
          Cnab.parse("spec/cnab.txt").detalhes.first.should be_an_instance_of(Cnab::Detalhe::SegmentoT)
        end

        it "should return a TrailerLote instance" do
          Cnab.parse("spec/cnab.txt").trailer_lote.should be_an_instance_of(Cnab::TrailerLote::Cobranca)
        end

        it "should return a TrailerArquivo instance" do
          Cnab.parse("spec/cnab.txt").trailer_arquivo.should be_an_instance_of(Cnab::TrailerArquivo)
        end
      end

      context "and merge equal true" do
        it "should return an SegmentoTU instance inside detalhes array" do
          Cnab.parse("spec/cnab.txt", true).detalhes.first.should be_an_instance_of(Cnab::Detalhe::SegmentoTU)
        end
      end
    end
  end
end