require 'spec_helper'

describe Cnab::Definition do
  describe "#initialize" do
    context "with a non existent version" do
      it "should raise and error" do
        lambda { Cnab::Definition.new("wrong") }.should raise_error(Cnab::Exceptions::VersionNotImplemented)
      end
    end

    context "with an existent version" do
      it "should load header_arquivo configs" do
        Cnab::Definition.new('08.7').header_arquivo.should be_an_instance_of(Cnab::Definitions::File)
      end

      it "should load header_lote configs" do
        Cnab::Definition.new('08.7').header_lote.should be_an_instance_of(Cnab::Definitions::File)
      end

      it "should load segmento_t configs" do
        Cnab::Definition.new('08.7').segmento_t.should be_an_instance_of(Cnab::Definitions::File)
      end

      it "should load segmento_u configs" do
        Cnab::Definition.new('08.7').segmento_u.should be_an_instance_of(Cnab::Definitions::File)
      end

      it "should load trailer_lote configs" do
        Cnab::Definition.new('08.7').trailer_lote.should be_an_instance_of(Cnab::Definitions::File)
      end

      it "should load trailer_arquivo configs" do
        Cnab::Definition.new('08.7').trailer_arquivo.should be_an_instance_of(Cnab::Definitions::File)
      end
    end
  end
end