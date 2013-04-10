require 'spec_helper'

describe Cnab::Detalhe do
  let(:definition) { Cnab::Definition.new('08.7') }

  describe "#parse" do
    context "with a line of segmento U" do
      before :each do
        @line = LINE.clone
        @line[13] = "U"
      end

      it "should return a instance of Line" do
        Cnab::Detalhe.parse(@line, definition).should be_an_instance_of(Cnab::Line)
      end
    end

    context "with a line of segmento T" do
      before :each do
        @line = LINE.clone
        @line[13] = "T"
      end

      it "should return a instance of Line" do
        Cnab::Detalhe.parse(@line, definition).should be_an_instance_of(Cnab::Line)
      end
    end

    context "with a line of any other segmento" do
      it "should raise an error" do
        lambda { Cnab::Detalhe.parse(LINE, definition) }.should raise_error(Cnab::Exceptions::SegmentNotImplemented)
      end
    end
  end

  describe "#merge" do
    before :each do
      @line = LINE.clone
      @line[13] = "T"
    end

    it "should return a Cnab::Detalhe::SegmentoTU instance" do
      Cnab::Detalhe.merge(@line, @line, definition).should be_an_instance_of(Cnab::Detalhe::SegmentoTU)
    end
  end
end