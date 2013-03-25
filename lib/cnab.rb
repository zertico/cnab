require "cnab/version"

module Cnab
  autoload :HeaderArquivo, 'cnab/header_arquivo'
  autoload :HeaderLote, 'cnab/header_lote'
  autoload :TrailerArquivo, 'cnab/trailer_arquivo'
  autoload :TrailerLote, 'cnab/trailer_lote'
  autoload :Detalhe, 'cnab/detalhe'
end
