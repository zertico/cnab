module Cnab
  module Detalhe
    autoload :SegmentoT, 'cnab/detalhe/segmento_t'
    autoload :SegmentoU, 'cnab/detalhe/segmento_u'
    autoload :SegmentoTU, 'cnab/detalhe/segmento_t_u'

    def self.parse(line)
      case line[13]
        when "T"
          SegmentoT.new(line)
        when "U"
          SegmentoU.new(line)
        else
          raise Exceptions::SegmentNotImplemented
      end
    end
  end
end