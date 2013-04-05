module Cnab
  module Definitions
    class TrailerLote
      include Definitions::Helper

      def initialize(version)
        @definition = YAML.load_file("#{Cnab.lib_path}/cnab/versions/#{version}/trailer_lote.yml")
      end
    end
  end
end