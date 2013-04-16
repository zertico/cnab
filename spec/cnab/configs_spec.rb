require 'spec_helper'

describe Cnab::Configs do
  describe "#initialize" do
    context "with a non existent version" do
      it "should raise and error" do
        lambda { Cnab::Configs.new("wrong") }.should raise_error(Cnab::Exceptions::VersionNotImplemented)
      end
    end

    context "with an existent version" do
      it "should load header_arquivo configs" do
        Cnab::Configs.new('08.7').header_arquivo.should be_an_instance_of(Cnab::Config)
      end

      it "should load header_lote configs" do
        Cnab::Configs.new('08.7').header_lote.should be_an_instance_of(Cnab::Config)
      end

      it "should load segmento_t configs" do
        Cnab::Configs.new('08.7').segmento_t.should be_an_instance_of(Cnab::Config)
      end

      it "should load segmento_u configs" do
        Cnab::Configs.new('08.7').segmento_u.should be_an_instance_of(Cnab::Config)
      end

      it "should load trailer_lote configs" do
        Cnab::Configs.new('08.7').trailer_lote.should be_an_instance_of(Cnab::Config)
      end

      it "should load trailer_arquivo configs" do
        Cnab::Configs.new('08.7').trailer_arquivo.should be_an_instance_of(Cnab::Config)
      end
    end
  end
end