require 'spec_helper'

describe Cnab::Detalhe::SegmentoT do
  before :each do
    @definition = Cnab::Definitions::SegmentoT.new('08.7')
  end

  describe "#initialize" do
    context "with a non valid line" do
      it "should raise an error" do
        lambda { Cnab::Detalhe::SegmentoT.new("12345", @definition) }.should raise_error(Cnab::Exceptions::LineNotParseable)
      end
    end

    context "with a valid line" do
      before :each do
        @segmento_t = Cnab::Detalhe::SegmentoT.new(LINE, @definition)
      end

      it "should set #banco" do
        @segmento_t.banco.should == "012"
      end

      it "should set #lote" do
        @segmento_t.lote.should == "3456"
      end

      it "should set #tipo_registro" do
        @segmento_t.tipo_registro.should == "7"
      end

      it "should set #num_registro" do
        @segmento_t.num_registro.should == "89012"
      end

      it "should set #segmento" do
        @segmento_t.segmento.should == "3"
      end

      it "should set #res_cnab1" do
        @segmento_t.res_cnab1.should == "4"
      end

      it "should set #cod_movimentacao" do
        @segmento_t.cod_movimentacao.should == "56"
      end

      it "should set #agencia" do
        @segmento_t.agencia.should == "78901"
      end

      it "should set #dv_agencia" do
        @segmento_t.dv_agencia.should == "2"
      end

      it "should set #conta_corrente" do
        @segmento_t.conta_corrente.should == "345678901234"
      end

      it "should set #dv_conta" do
        @segmento_t.dv_conta.should == "5"
      end

      it "should set #dv_conta_agencia" do
        @segmento_t.dv_conta_agencia.should == "6"
      end

      it "should set #id_titulo" do
        @segmento_t.id_titulo.should == "78901234567890123456"
      end

      it "should set #carteira" do
        @segmento_t.carteira.should == "7"
      end

      it "should set #doc_cobranca" do
        @segmento_t.doc_cobranca.should == "890123456789012"
      end

      it "should set #vencimento" do
        @segmento_t.vencimento.should == "34567890"
      end

      it "should set #valor_titulo" do
        @segmento_t.valor_titulo.should == "123456789012345"
      end

      it "should set #banco_recebimento" do
        @segmento_t.banco_recebimento.should == "678"
      end

      it "should set #ag_recebimento" do
        @segmento_t.ag_recebimento.should == "90123"
      end

      it "should set #dv_ag_recebimento" do
        @segmento_t.dv_ag_recebimento.should == "4"
      end

      it "should set #id_titulo_empresa" do
        @segmento_t.id_titulo_empresa.should == "5678901234567890123456789"
      end

      it "should set #cod_moeda" do
        @segmento_t.cod_moeda.should == "01"
      end

      it "should set #tipo_inscricao" do
        @segmento_t.tipo_inscricao.should == "2"
      end

      it "should set #num_inscricao" do
        @segmento_t.num_inscricao.should == "345678901234567"
      end

      it "should set #nome" do
        @segmento_t.nome.should == "8901234567890123456789012345678901234567"
      end

      it "should set #num_contrato" do
        @segmento_t.num_contrato.should == "8901234567"
      end

      it "should set #tarifa" do
        @segmento_t.tarifa.should == "890123456789012"
      end

      it "should set #motivo" do
        @segmento_t.motivo.should == "3456789012"
      end

      it "should set #res_cnab2" do
        @segmento_t.res_cnab2.should == "34567890123456789"
      end
    end
  end
end