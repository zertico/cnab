require 'spec_helper'

describe Cnab::Definition do
  describe "#initialize" do
    context "with a non existent version" do
      it "should raise and error" do
        lambda { Cnab::Definition.new("wrong") }.should raise_error(Cnab::Exceptions::VersionNotImplemented)
      end
    end

    context "with an existent version" do
      it "should initialize a header_arquivo instance" do
        Cnab::Definition.new('08.7').header_arquivo.should be_an_instance_of(Cnab::Definitions::HeaderArquivo)
      end

      it "should initialize a header_lote instance" do
        Cnab::Definition.new('08.7').header_lote.should be_an_instance_of(Cnab::Definitions::HeaderLote)
      end

      it "should initialize a segmento_t instance" do
        Cnab::Definition.new('08.7').segmento_t.should be_an_instance_of(Cnab::Definitions::SegmentoT)
      end

      it "should initialize a segmento_u instance" do
        Cnab::Definition.new('08.7').segmento_u.should be_an_instance_of(Cnab::Definitions::SegmentoU)
      end

      it "should initialize a trailer_lote instance" do
        Cnab::Definition.new('08.7').trailer_lote.should be_an_instance_of(Cnab::Definitions::TrailerLote)
      end

      it "should initialize a trailer_arquivo instance" do
        Cnab::Definition.new('08.7').trailer_arquivo.should be_an_instance_of(Cnab::Definitions::TrailerArquivo)
      end
    end
  end
end