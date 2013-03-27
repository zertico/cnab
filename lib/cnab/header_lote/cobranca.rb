module Cnab
  module HeaderLote
    class Cobranca
      include Helper
      
      def initialize(line)
        raise Exceptions::LineNotParseable unless line.size == 242

        @banco                  = line[0..2].strip
        @lote                   = line[3..6].strip
        @registro               = line[7..7].strip
        @tipo_operacao          = line[8..8].strip
        @tipo_servico           = line[9..10].strip
        @res_cnab1              = line[11..12].strip
        @layout_lote            = line[13..15].strip
        @res_cnab2              = line[16..16].strip
        @tipo_empresa           = line[17..17].strip
        @num_empresa            = line[18..32].strip
        @convenio               = line[33..52].strip
        @agencia                = line[53..57].strip 
        @dv_agencia             = line[58..58].strip
        @conta_corrente         = line[59..70].strip
        @dv_conta               = line[71..71].strip
        @dv_conta_agencia       = line[72..72].strip
        @nome_empresa           = line[73..102].strip
        @informacao1            = line[103..142].strip
        @informacao2            = line[143..182].strip
        @numero_remessa         = line[183..190].strip
        @data_gravacao          = line[191..198].strip
        @data_credito           = line[199..206].strip
        @res_cnab3              = line[207..239].strip
      end
    end
  end
end