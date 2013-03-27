module Cnab
  module Detalhe
    class SegmentoU
      include Helper
      
      def initialize(line)
        raise Exceptions::LineNotParseable unless line.size == 242

        @banco                   = line[0..2].strip
        @lote                    = line[3..6].strip
        @tipo_registro           = line[7..7].strip
        @num_registro            = line[8..12].strip
        @segmento                = line[13..13].strip
        @res_cnab1               = line[14..14].strip
        @cod_movimentacao        = line[15..16].strip
        @acrescimos              = line[17..31].strip
        @valor_desconto          = line[32..46].strip
        @valor_abatimento        = line[47..61].strip
        @valor_iof               = line[62..76].strip
        @valor_pago              = line[77..91].strip
        @valor_liquido           = line[92..106].strip
        @outras_despesas         = line[107..122].strip
        @outros_creditos         = line[123..136].strip
        @data_ocorrencia         = line[137..144].strip
        @data_credito            = line[145..152].strip
        @cod_ocorrencia_sacado   = line[153..156].strip
        @data_ocorrencia_sacado  = line[157..164].strip
        @valor_ocorrencia_sacado = line[165..179].strip
        @compl_ocorrencia_sacado = line[180..209].strip
        @banco_compensacao       = line[210..212].strip
        @banco_enviado           = line[213..232].strip
        @res_cnab2               = line[233..239].strip
      end
    end
  end
end
