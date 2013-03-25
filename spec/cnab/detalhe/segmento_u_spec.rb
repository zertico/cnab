require 'spec_helper'

describe Cnab::Detalhe::SegmentoU do
  describe "#initialize" do
    before :each do
      @segmento_u = Cnab::Detalhe::SegmentoU.new(LINE)
    end
    
    it "should set #banco" do
      @segmento_u.banco.should == "012"
    end
    
    it "should set #lote" do
      @segmento_u.lote.should == "3456"
    end
    
    it "should set #tipo_registro" do
      @segmento_u.tipo_registro.should == "7"
    end
    
    it "should set #num_registro" do
      @segmento_u.num_registro.should == "89012"
    end
    
    it "should set #segmento" do
      @segmento_u.segmento.should == "3"
    end
    
    it "should set #res_cnab1" do
      @segmento_u.res_cnab1.should == "4"
    end
    
    it "should set #cod_movimentacao" do
      @segmento_u.cod_movimentacao.should == "56"
    end
    
    it "should set #acrescimos" do
      @segmento_u.acrescimos.should == "789012345678901"
    end
    
    it "should set #valor_desconto" do
      @segmento_u.valor_desconto.should == "234567890123456"
    end
    
    it "should set #valor_abatimento" do
      @segmento_u.valor_abatimento.should == "789012345678901"
    end
    
    it "should set #valor_iof" do
      @segmento_u.valor_iof.should == "234567890123456"
    end
    
    it "should set #valor_pago" do
      @segmento_u.valor_pago.should == "789012345678901"
    end
    
    it "should set #valor_liquido" do
      @segmento_u.valor_liquido.should == "234567890123456"
    end
    
    it "should set #outras_despesas" do
      @segmento_u.outras_despesas.should == "7890123456789012"
    end
    
    it "should set #outros_creditos" do
      @segmento_u.outros_creditos.should == "34567890123456"
    end
    
    it "should set #data_ocorrencia" do
      @segmento_u.data_ocorrencia.should == "78901234"
    end
    
    it "should set #data_credito" do
      @segmento_u.data_credito.should == "56789012"
    end
    
    it "should set #cod_ocorrencia_sacado" do
      @segmento_u.cod_ocorrencia_sacado.should == "3456"
    end
    
    it "should set #data_ocorrencia_sacado" do
      @segmento_u.data_ocorrencia_sacado.should == "78901234"
    end
    
    it "should set #valor_ocorrencia_sacado" do
      @segmento_u.valor_ocorrencia_sacado.should == "567890123456789"
    end
    
    it "should set #compl_ocorrencia_sacado" do
      @segmento_u.compl_ocorrencia_sacado.should == "012345678901234567890123456789"
    end
    
    it "should set #banco_compensacao" do
      @segmento_u.banco_compensacao.should == "012"
    end
    
    it "should set #banco_enviado" do
      @segmento_u.banco_enviado.should == "34567890123456789012"
    end
    
    it "should set #res_cnab2" do
      @segmento_u.res_cnab2.should == "3456789"
    end
  end
end