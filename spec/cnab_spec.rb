require 'spec_helper'
require 'fakefs'

describe Cnab do
  describe "#parse" do
    context "withoud file" do
      it "should raise an exception" do
        lambda { Cnab.parse }.should raise_error Cnab::Exceptions::NoFileGiven
      end
    end

    context "with a file" do
      before :each do
        @line = "#{LINE}\n"
        @line[13] = "T"

        File.open("cnab.txt", 'w') do |f|
          f.write(@line)
          f.write(@line)
          f.write(@line)
          @line[7] = "5"
          f.write(@line)
          f.write(@line)
        end
      end

      it "should return a Retorno instance" do
        Cnab.parse("cnab.txt").should be_an_instance_of(Cnab::Retorno)
      end

      it "should return a HeaderArquivo instance" do
        Cnab.parse("cnab.txt").header_arquivo.should be_an_instance_of(Cnab::HeaderArquivo)
      end

      it "should return a HeaderLote instance" do
        Cnab.parse("cnab.txt").header_lote.should be_an_instance_of(Cnab::HeaderLote::Cobranca)
      end

      it "should return an array of detalhes" do
        Cnab.parse("cnab.txt").detalhes.should be_an_instance_of(Array)
      end

      it "should return an SegmentoT instance inside detalhes array" do
        Cnab.parse("cnab.txt").detalhes.first.should be_an_instance_of(Cnab::Detalhe::SegmentoT)
      end

      it "should return a TrailerLote instance" do
        Cnab.parse("cnab.txt").trailer_lote.should be_an_instance_of(Cnab::TrailerLote::Cobranca)
      end

      it "should return a TrailerArquivo instance" do
        Cnab.parse("cnab.txt").trailer_arquivo.should be_an_instance_of(Cnab::TrailerArquivo)
      end
    end
  end
end