module Cnab
  module Definitions
    class SegmentoT
      def initialize(version)
        @definition = YAML.load_file("lib/cnab/versions/#{version}/segmento_t.yml")
      end

      def method_missing(method)
        range = @definition[method.to_s].split('..')
        Integer(range[0])..Integer(range[1])
      end
    end
  end
end