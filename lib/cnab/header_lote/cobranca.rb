module Cnab
  module HeaderLote
    class Cobranca
      include Helper
      
      def initialize(line)
        raise Exceptions::LineNotParseable unless line.size == 242

        @banco                  = line[0..2]
        @lote                   = line[3..6]
        @registro               = line[7..7]
        @tipo_operacao          = line[8..8]
        @tipo_servico           = line[9..10]
        @res_cnab1              = line[11..12]
        @layout_lote            = line[13..15]
        @res_cnab2              = line[16..16]
        @tipo_empresa           = line[17..17]
        @num_empresa            = line[18..32]
        @convenio               = line[33..52]
        @agencia                = line[53..57] 
        @dv_agencia             = line[58..58]
        @conta_corrente         = line[59..70]
        @dv_conta               = line[71..71]
        @dv_conta_agencia       = line[72..72]
        @nome_empresa           = line[73..102]
        @informacao1            = line[103..142]
        @informacao2            = line[143..182]
        @numero_remessa         = line[183..190]
        @data_gravacao          = line[191..198]
        @data_credito           = line[199..206]
        @res_cnab3              = line[207..239]
      end
    end
  end
end