module Cnab
  module Detalhe
    class SegmentoT
      include Helper
      
      def initialize(line)
        raise Exceptions::LineNotParseable unless line.size == 242

        @banco                  = line[0..2]
        @lote                   = line[3..6]
        @tipo_registro          = line[7..7]
        @num_registro           = line[8..12]
        @segmento               = line[13..13]
        @res_cnab1              = line[14..14]
        @cod_movimentacao       = line[15..16]
        @agencia                = line[17..21]
        @dv_agencia             = line[22..22]
        @conta_corrente         = line[23..34]
        @dv_conta               = line[35..35]
        @dv_conta_agencia       = line[36..36]
        @id_titulo              = line[37..56]
        @carteira               = line[57..57]
        @doc_cobranca           = line[58..72]
        @vencimento             = line[73..80]
        @valor_titulo           = line[81..95]
        @banco_recebimento      = line[96..98]
        @ag_recebimento         = line[99..103]
        @dv_ag_recebimento      = line[104..104]
        @id_titulo_empresa      = line[105..129]
        @cod_moeda              = line[130..131]
        @tipo_inscricao         = line[132..132]
        @num_inscricao          = line[133..147]
        @nome                   = line[148..187]
        @num_contrato           = line[188..197]
        @tarifa                 = line[198..212]
        @motivo                 = line[213..222]
        @res_cnab2              = line[223..239]
      end
    end
  end
end
