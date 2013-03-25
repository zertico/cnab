module Cnab
  class TrailerArquivo  
    def initialize(line)
      banco                  = line[0..2]
      lote                   = line[3..6]
      registro               = line[7..7]
      res_cnab1              = line[8..16]
      qtd_lotes              = line[17..22]
      qtd_registros          = line[23..28]
      qtd_contas             = line[29..34]
      res_cnab2              = line[35..239]
    end
  end
end