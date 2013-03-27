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
end