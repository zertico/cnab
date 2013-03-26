module Cnab
  class Retorno
    include Helper

    def initialize(args = {})
      @header_arquivo = args[:header_arquivo]
      @header_lote = args[:header_lote]
      @trailer_arquivo = args[:trailer_arquivo]
      @trailer_lote = args[:trailer_lote]
      @detalhes = args[:detalhes] || []
    end
  end
end