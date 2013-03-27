require 'spec_helper'

describe Cnab::Detalhe do
  describe "#parse" do
    context "with a line of segmento U" do
      before :each do
        @line = LINE.clone
        @line[13] = "U"
      end

      it "should return a instance of SegmentoU" do
        Cnab::Detalhe.parse(@line).should be_an_instance_of(Cnab::Detalhe::SegmentoU)
      end
    end

    context "with a line of segmento T" do
      before :each do
        @line = LINE.clone
        @line[13] = "T"
      end

      it "should return a instance of SegmentoT" do
        Cnab::Detalhe.parse(@line).should be_an_instance_of(Cnab::Detalhe::SegmentoT)
      end
    end

    context "with a line of any other segmento" do
      it "should raise an error" do
        lambda { Cnab::Detalhe.parse(LINE) }.should raise_error(Cnab::Exceptions::SegmentNotImplemented)
      end
    end
  end

  describe "#merge" do
    before :each do
      Cnab::Detalhe.stub(:parse).with("line1").and_return(Cnab::Detalhe::SegmentoT.new(LINE))
      Cnab::Detalhe.stub(:parse).with("line2").and_return(Cnab::Detalhe::SegmentoU.new(LINE))
    end

    it "should return a Cnab::Detalhe::SegmentoTU instance" do
      Cnab::Detalhe.merge("line1", "line2").should be_an_instance_of(Cnab::Detalhe::SegmentoTU)
    end
  end
end