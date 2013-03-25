module Cnab
  module Detalhe
    class SegmentoU
      def initialize(line)
        banco                   = line[0..2]
        lote                    = line[3..6]
        tipo_registro           = line[7..7]
        num_registro            = line[8..12]
        segmento                = line[13..13]
        res_cnab1               = line[14..14]
        cod_movimentacao        = line[15..16]
        acrescimos              = line[17..31]
        valor_desconto          = line[32..46]
        valor_abatimento        = line[47..61]
        valor_iof               = line[62..76]
        valor_pago              = line[77..91]
        valor_liquido           = line[92..106]
        outras_despesas         = line[107..122]
        outros_creditos         = line[123..136]
        data_ocorrencia         = line[137..144]
        data_credito            = line[145..152]
        cod_ocorrencia_sacado   = line[153..156]
        data_ocorrencia_sacado  = line[157..164]
        valor_ocorrencia_sacado = line[165..179]
        compl_ocorrencia_sacado = line[180..209]
        banco_compensacao       = line[210..212]
        banco_enviado           = line[213..232]
        res_cnab2               = line[233..239]
      end
    end
  end
end
