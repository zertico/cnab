module Cnab
  class HeaderArquivo  
    include Helper
    
    def initialize(line)
      raise Exceptions::LineNotParseable unless line.size == 242

      @banco                  = line[0..2].strip
      @lote                   = line[3..6].strip
      @registro               = line[7..7].strip
      @res_cnab1              = line[8..16].strip
      @tipo_empresa           = line[17..17].strip
      @num_empresa            = line[18..31].strip
      @convenio               = line[32..51].strip
      @agencia                = line[52..56].strip 
      @dv_agencia             = line[57..57].strip
      @conta_corrente         = line[58..69].strip
      @dv_conta               = line[70..70].strip
      @dv_conta_agencia       = line[71..71].strip
      @nome_empresa           = line[72..101].strip
      @nome_banco             = line[102..131].strip
      @res_cnab2              = line[132..141].strip
      @cod_retorno            = line[142..142].strip
      @data_geracao_arq       = line[143..150].strip
      @hora_geracao_arq       = line[151..156].strip
      @sequencia              = line[157..162].strip
      @versao                 = line[163..165].strip
      @densidade              = line[166..170].strip
      @res_banco              = line[171..190].strip
      @res_empresa            = line[191..210].strip
      @res_cnab3              = line[211..239].strip
    end
  end
end