module Cnab
  module TrailerLote
    class Cobranca
      include Helper
      
      def initialize(line)
        @banco                    = line[0..2]
        @lote                     = line[3..6]
        @registro                 = line[7..7]
        @res_cnab1                = line[8..16]
        @qtd_registros            = line[17..22]
        @qtd_titulos_simples      = line[23..28]
        @valor_titulos_simples    = line[29..45]
        @qtd_titulos_vinculada    = line[46..51]
        @valor_titulos_simples    = line[52..68]
        @qtd_titulos_caucionada   = line[69..74]
        @valor_titulos_caucionada = line[75..91]
        @qtd_titulos_descontada   = line[92..97]
        @valor_titulos_descontada = line[98..114]
        @num_aviso                = line[115..122]
        @res_cnab3                = line[123..239]
      end
    end
  end
end