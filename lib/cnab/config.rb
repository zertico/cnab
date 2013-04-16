module Cnab
  class Config
    def initialize(version, file)
      @definition = YAML.load_file("#{Cnab.config_path}/#{version}/#{file}.yml")
    end

    def method_missing(method_name)
      range = @definition[method_name.to_s].split('..')
      Integer(range[0])..Integer(range[1])
    end

    def respond_to_missing?(method_name, include_private = false)
      return true unless @definition[method_name.to_s].nil?
      super
    end
  end
end