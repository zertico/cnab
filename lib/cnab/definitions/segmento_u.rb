module Cnab
  module Definitions
    class SegmentoU
      def initialize(version)
        @definition = YAML.load_file("#{Cnab.lib_path}/cnab/versions/#{version}/segmento_u.yml")
      end

      def method_missing(method)
        range = @definition[method.to_s].split('..')
        Integer(range[0])..Integer(range[1])
      end
    end
  end
end