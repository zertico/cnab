module Cnab
  class Definition
    def initialize(version)
      raise Exceptions::VersionNotImplemented unless File.directory?("#{Cnab.lib_path}/cnab/versions/#{version}")

      @header_arquivo = Definitions::File.new(version, 'header_arquivo')
      @header_lote = Definitions::File.new(version, 'header_lote')
      @segmento_t = Definitions::File.new(version, 'segmento_t')
      @segmento_u = Definitions::File.new(version, 'segmento_u')
      @trailer_lote = Definitions::File.new(version, 'trailer_lote')
      @trailer_arquivo = Definitions::File.new(version, 'trailer_arquivo')
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