module Cnab
  module Detalhe
    class SegmentoU
      include Helper
      
      def initialize(line, definition)
        raise Exceptions::LineNotParseable unless line.size == 242

        @line = line
        @definition = definition
      end
    end
  end
end