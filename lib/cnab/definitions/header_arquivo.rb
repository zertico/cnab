module Cnab
  module Definitions
    class HeaderArquivo
      include Definitions::Helper

      def initialize(version)
        @definition = YAML.load_file("#{Cnab.lib_path}/cnab/versions/#{version}/header_arquivo.yml")
      end
    end
  end
end