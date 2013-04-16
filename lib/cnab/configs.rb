module Cnab
  class Configs
    def initialize(version)
      raise Exceptions::VersionNotImplemented unless File.directory?("#{Cnab.config_path}/#{version}")

      @header_arquivo = Config.new(version, 'header_arquivo')
      @header_lote = Config.new(version, 'header_lote')
      @segmento_t = Config.new(version, 'segmento_t')
      @segmento_u = Config.new(version, 'segmento_u')
      @trailer_lote = Config.new(version, 'trailer_lote')
      @trailer_arquivo = Config.new(version, 'trailer_arquivo')
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