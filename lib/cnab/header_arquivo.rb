module Cnab
  class HeaderArquivo  
    include Helper
    
    def initialize(line)
      raise Exceptions::LineNotParseable unless line.size == 242

      @banco                  = line[0..2]
      @lote                   = line[3..6]
      @registro               = line[7..7]
      @res_cnab1              = line[8..16]
      @tipo_empresa           = line[17..17]
      @num_empresa            = line[18..31]
      @convenio               = line[32..51]
      @agencia                = line[52..56] 
      @dv_agencia             = line[57..57]
      @conta_corrente         = line[58..69]
      @dv_conta               = line[70..70]
      @dv_conta_agencia       = line[71..71]
      @nome_empresa           = line[72..101]
      @nome_banco             = line[102..131]
      @res_cnab2              = line[132..141]
      @cod_retorno            = line[142..142]
      @data_geracao_arq       = line[143..150]
      @hora_geracao_arq       = line[151..156]
      @sequencia              = line[157..162]
      @versao                 = line[163..165]
      @densidade              = line[166..170]
      @res_banco              = line[171..190]
      @res_empresa            = line[191..210]
      @res_cnab3              = line[211..239]
    end
  end
end