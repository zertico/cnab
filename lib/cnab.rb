require "cnab/version"

module Cnab
  autoload :HeaderArquivo, 'cnab/header_arquivo'
  autoload :HeaderLote, 'cnab/header_lote'
  autoload :TrailerArquivo, 'cnab/trailer_arquivo'
  autoload :TrailerLote, 'cnab/trailer_lote'
  autoload :Detalhe, 'cnab/detalhe'
  autoload :Retorno, 'cnab/retorno'

  autoload :Helper, 'cnab/helper'
  autoload :Exceptions, 'cnab/exceptions'

  def self.parse(file = nil)
    raise Exceptions::NoFileGiven if file.nil?

    File.open(file, 'rb') do |f|
      header_arquivo = HeaderArquivo.new(f.gets)
      header_lote = HeaderLote::Cobranca.new(f.gets)

      detalhes = []
      while(line = f.gets)
        if line[7] == "5"
          trailer_lote = TrailerLote::Cobranca.new(line)
          break
        end
        detalhes << Detalhe.parse(line)
      end

      trailer_arquivo = TrailerArquivo.new(f.gets)
      Retorno.new({ :header_arquivo => header_arquivo,
                    :header_lote => header_lote,
                    :detalhes => detalhes,
                    :trailer_lote => trailer_lote,
                    :trailer_arquivo => trailer_arquivo  })
    end
  end
end