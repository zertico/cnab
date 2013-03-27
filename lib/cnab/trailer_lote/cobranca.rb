module Cnab
  module TrailerLote
    class Cobranca
      include Helper
      
      def initialize(line)
        raise Exceptions::LineNotParseable unless line.size == 242

        @banco                    = line[0..2].strip
        @lote                     = line[3..6].strip
        @registro                 = line[7..7].strip
        @res_cnab1                = line[8..16].strip
        @qtd_registros            = line[17..22].strip
        @qtd_titulos_simples      = line[23..28].strip
        @valor_titulos_simples    = line[29..45].strip
        @qtd_titulos_vinculada    = line[46..51].strip
        @valor_titulos_simples    = line[52..68].strip
        @qtd_titulos_caucionada   = line[69..74].strip
        @valor_titulos_caucionada = line[75..91].strip
        @qtd_titulos_descontada   = line[92..97].strip
        @valor_titulos_descontada = line[98..114].strip
        @num_aviso                = line[115..122].strip
        @res_cnab3                = line[123..239].strip
      end
    end
  end
end