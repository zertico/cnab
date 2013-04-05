module Cnab
  module Definitions
    class SegmentoU
      include Definitions::Helper

      def initialize(version)
        @definition = YAML.load_file("#{Cnab.lib_path}/cnab/versions/#{version}/segmento_u.yml")
      end
    end
  end
end