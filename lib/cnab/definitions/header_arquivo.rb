module Cnab
  module Definitions
    class HeaderArquivo
      def initialize(version)
        @definition = YAML.load_file("lib/cnab/versions/#{version}/header_arquivo.yml")
      end

      def method_missing(method)
        range = @definition[method.to_s].split('..')
        Range.new(range[0].to_i, range[1].to_i)
      end
    end
  end
end