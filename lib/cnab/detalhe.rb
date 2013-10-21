module Cnab
  module Detalhe
    def self.parse(line, definition)
      case line[13]
        when "T"
          Line.new(line, definition.segmento_t)
        when "U"
          Line.new(line, definition.segmento_u)
        else
          raise Exceptions::SegmentNotImplemented
      end
    end

    def self.merge(line1, line2, definition)
      MergedLines.new(parse(line1, definition), parse(line2, definition))
    end
  end
end