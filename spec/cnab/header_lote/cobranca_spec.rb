require 'spec_helper'

describe Cnab::HeaderLote::Cobranca do
  describe "#initialize" do
    before :each do
      @cobranca = Cnab::HeaderLote::Cobranca.new(LINE)
    end
    
    it "should set #banco" do
      @cobranca.banco.should == "012"
    end

    it "should set #lote" do
      @cobranca.lote.should == "3456"
    end

    it "should set #registro" do
      @cobranca.registro.should == "7"
    end

    it "should set #tipo_operacao" do
      @cobranca.tipo_operacao.should == "8"
    end

    it "should set #tipo_servico" do
      @cobranca.tipo_servico.should == "90"
    end

    it "should set #res_cnab1" do
      @cobranca.res_cnab1.should == "12"
    end

    it "should set #layout_lote" do
      @cobranca.layout_lote.should == "345"
    end

    it "should set #res_cnab2" do
      @cobranca.res_cnab2.should == "6"
    end

    it "should set #tipo_empresa" do
      @cobranca.tipo_empresa.should == "7"
    end

    it "should set #num_empresa" do
      @cobranca.num_empresa.should == "890123456789012"
    end

    it "should set #convenio" do
      @cobranca.convenio.should == "34567890123456789012"
    end

    it "should set #agencia" do
      @cobranca.agencia.should == "34567"
    end

    it "should set #dv_agencia" do
      @cobranca.dv_agencia.should == "8"
    end

    it "should set #conta_corrente" do
      @cobranca.conta_corrente.should == "901234567890"
    end

    it "should set #dv_conta" do
      @cobranca.dv_conta.should == "1"
    end

    it "should set #dv_conta_agencia" do
      @cobranca.dv_conta_agencia.should == "2"
    end

    it "should set #nome_empresa" do
      @cobranca.nome_empresa.should == "345678901234567890123456789012"
    end

    it "should set #informacao1" do
      @cobranca.informacao1.should == "3456789012345678901234567890123456789012"
    end

    it "should set #informacao2" do
      @cobranca.informacao2.should == "3456789012345678901234567890123456789012"
    end

    it "should set #numero_remessa" do
      @cobranca.numero_remessa.should == "34567890"
    end

    it "should set #data_gravacao" do
      @cobranca.data_gravacao.should == "12345678"
    end

    it "should set #data_credito" do
      @cobranca.data_credito.should == "90123456"
    end

    it "should set #res_cnab3" do
      @cobranca.res_cnab3.should == "789012345678901234567890123456789"
    end
  end
end