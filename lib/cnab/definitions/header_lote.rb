module Cnab
  module Definitions
    class HeaderLote
      include Definitions::Helper

      def initialize(version)
        @definition = YAML.load_file("#{Cnab.lib_path}/cnab/versions/#{version}/header_lote.yml")
      end
    end
  end
end