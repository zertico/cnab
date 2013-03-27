module Cnab
  module Detalhe
    class SegmentoT
      include Helper
      
      def initialize(line)
        raise Exceptions::LineNotParseable unless line.size == 242

        @banco                  = line[0..2].strip
        @lote                   = line[3..6].strip
        @tipo_registro          = line[7..7].strip
        @num_registro           = line[8..12].strip
        @segmento               = line[13..13].strip
        @res_cnab1              = line[14..14].strip
        @cod_movimentacao       = line[15..16].strip
        @agencia                = line[17..21].strip
        @dv_agencia             = line[22..22].strip
        @conta_corrente         = line[23..34].strip
        @dv_conta               = line[35..35].strip
        @dv_conta_agencia       = line[36..36].strip
        @id_titulo              = line[37..56].strip
        @carteira               = line[57..57].strip
        @doc_cobranca           = line[58..72].strip
        @vencimento             = line[73..80].strip
        @valor_titulo           = line[81..95].strip
        @banco_recebimento      = line[96..98].strip
        @ag_recebimento         = line[99..103].strip
        @dv_ag_recebimento      = line[104..104].strip
        @id_titulo_empresa      = line[105..129].strip
        @cod_moeda              = line[130..131].strip
        @tipo_inscricao         = line[132..132].strip
        @num_inscricao          = line[133..147].strip
        @nome                   = line[148..187].strip
        @num_contrato           = line[188..197].strip
        @tarifa                 = line[198..212].strip
        @motivo                 = line[213..222].strip
        @res_cnab2              = line[223..239].strip
      end
    end
  end
end
