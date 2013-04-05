module Cnab
  module Definitions
    class SegmentoT
      include Definitions::Helper

      def initialize(version)
        @definition = YAML.load_file("#{Cnab.lib_path}/cnab/versions/#{version}/segmento_t.yml")
      end
    end
  end
end