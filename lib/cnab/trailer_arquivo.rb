module Cnab
  class TrailerArquivo  
    include Helper
    
    def initialize(line)
      raise Exceptions::LineNotParseable unless line.size == 242

      @banco                  = line[0..2].strip
      @lote                   = line[3..6].strip
      @registro               = line[7..7].strip
      @res_cnab1              = line[8..16].strip
      @qtd_lotes              = line[17..22].strip
      @qtd_registros          = line[23..28].strip
      @qtd_contas             = line[29..34].strip
      @res_cnab2              = line[35..239].strip
    end
  end
end