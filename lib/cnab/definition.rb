module Cnab
  class Definition
    def initialize(version)
      @header_arquivo = Definitions::HeaderArquivo.new(version)
      @header_lote = Definitions::HeaderLote.new(version)
      @segmento_t = Definitions::SegmentoT.new(version)
      @segmento_u = Definitions::SegmentoU.new(version)
      @trailer_lote = Definitions::TrailerLote.new(version)
      @trailer_arquivo = Definitions::TrailerArquivo.new(version)
    end

    def method_missing(method_name)
      return instance_variable_get("@#{method_name}") if instance_variable_defined?("@#{method_name}")
      super
    end

    def respond_to_missing?(method_name, include_private = false)
      return true if instance_variable_defined?("@#{method_name}")
      super
    end
  end
end