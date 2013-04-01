module Cnab
  module Detalhe
    autoload :SegmentoT, 'cnab/detalhe/segmento_t'
    autoload :SegmentoU, 'cnab/detalhe/segmento_u'
    autoload :SegmentoTU, 'cnab/detalhe/segmento_t_u'

    def self.parse(line, definition)
      case line[13]
        when "T"
          SegmentoT.new(line, definition.segmento_t)
        when "U"
          SegmentoU.new(line, definition.segmento_u)
        else
          raise Exceptions::SegmentNotImplemented
      end
    end

    def self.merge(line1, line2, definition)
      SegmentoTU.new(parse(line1, definition), parse(line2, definition))
    end
  end
end