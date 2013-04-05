module Cnab
  module Definitions
    class TrailerArquivo
      include Definitions::Helper

      def initialize(version)
        @definition = YAML.load_file("#{Cnab.lib_path}/cnab/versions/#{version}/trailer_arquivo.yml")
      end
    end
  end
end