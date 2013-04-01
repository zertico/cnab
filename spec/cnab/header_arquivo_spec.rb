require 'spec_helper'

describe Cnab::HeaderArquivo do
  before :each do
    @definition = Cnab::Definitions::HeaderArquivo.new('08.7')
  end

  context "with a non valid line" do
    it "should raise an error" do
      lambda { Cnab::HeaderArquivo.new("12345", @definition) }.should raise_error(Cnab::Exceptions::LineNotParseable)
    end
  end

  context "with a valid line" do
    describe "#initialize" do
      before :each do
        @header_arquivo = Cnab::HeaderArquivo.new(LINE, @definition)
      end

      it "should set #banco" do
        @header_arquivo.banco.should == "012"
      end

      it "should set #lote" do
        @header_arquivo.lote.should == "3456"
      end

      it "should set #registro" do
        @header_arquivo.registro.should == "7"
      end

      it "should set #res_cnab1" do
        @header_arquivo.res_cnab1.should == "890123456"
      end

      it "should set #tipo_empresa" do
        @header_arquivo.tipo_empresa.should == "7"
      end

      it "should set #num_empresa" do
        @header_arquivo.num_empresa.should == "89012345678901"
      end

      it "should set #convenio" do
        @header_arquivo.convenio.should == "23456789012345678901"
      end

      it "should set #agencia" do
        @header_arquivo.agencia.should == "23456"
      end

      it "should set #dv_agencia" do
        @header_arquivo.dv_agencia.should == "7"
      end

      it "should set #conta_corrente" do
        @header_arquivo.conta_corrente.should == "890123456789"
      end

      it "should set #dv_conta" do
        @header_arquivo.dv_conta.should == "0"
      end

      it "should set #dv_conta_agencia" do
        @header_arquivo.dv_conta_agencia.should == "1"
      end

      it "should set #nome_empresa" do
        @header_arquivo.nome_empresa.should == "234567890123456789012345678901"
      end

      it "should set #nome_banco" do
        @header_arquivo.nome_banco.should == "234567890123456789012345678901"
      end

      it "should set #res_cnab2" do
        @header_arquivo.res_cnab2.should == "2345678901"
      end

      it "should set #cod_retorno" do
        @header_arquivo.cod_retorno.should == "2"
      end

      it "should set #data_geracao_arq" do
        @header_arquivo.data_geracao_arq.should == "34567890"
      end

      it "should set #hora_geracao_arq" do
        @header_arquivo.hora_geracao_arq.should == "123456"
      end

      it "should set #sequencia" do
        @header_arquivo.sequencia.should == "789012"
      end

      it "should set #versao" do
        @header_arquivo.versao.should == "345"
      end

      it "should set #densidade" do
        @header_arquivo.densidade.should == "67890"
      end

      it "should set #res_banco" do
        @header_arquivo.res_banco.should == "12345678901234567890"
      end

      it "should set #res_empresa" do
        @header_arquivo.res_empresa.should == "12345678901234567890"
      end

      it "should set #res_cnab3" do
        @header_arquivo.res_cnab3.should == "12345678901234567890123456789"
      end
    end
  end
end