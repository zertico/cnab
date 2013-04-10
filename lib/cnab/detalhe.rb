module Cnab
  module Detalhe
    autoload :SegmentoTU, 'cnab/detalhe/segmento_t_u'

    def self.parse(line, definition)
      case line[13]
        when "T"
          Cnab::Line.new(line, definition.segmento_t)
        when "U"
          Cnab::Line.new(line, definition.segmento_u)
        else
          raise Exceptions::SegmentNotImplemented
      end
    end

    def self.merge(line1, line2, definition)
      SegmentoTU.new(parse(line1, definition), parse(line2, definition))
    end
  end
end