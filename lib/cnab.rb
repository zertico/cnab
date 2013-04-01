require "cnab/version"
require "yaml"

module Cnab
  autoload :HeaderArquivo, 'cnab/header_arquivo'
  autoload :HeaderLote, 'cnab/header_lote'
  autoload :TrailerArquivo, 'cnab/trailer_arquivo'
  autoload :TrailerLote, 'cnab/trailer_lote'
  autoload :Detalhe, 'cnab/detalhe'
  autoload :Retorno, 'cnab/retorno'
  autoload :Definition, 'cnab/definition'
  autoload :Definitions, 'cnab/definitions'

  autoload :Helper, 'cnab/helper'
  autoload :Exceptions, 'cnab/exceptions'

  def self.parse(file = nil, merge = false, version = '08.7')
    raise Exceptions::NoFileGiven if file.nil?

    definition = Cnab::Definition.new(version)

    File.open(file, 'rb') do |f|
      header_arquivo = HeaderArquivo.new(f.gets, definition.header_arquivo)
      header_lote = HeaderLote::Cobranca.new(f.gets, definition.header_lote)

      detalhes = []
      while(line = f.gets)
        if line[7] == "5"
          trailer_lote = TrailerLote::Cobranca.new(line, definition.trailer_lote)
          break
        end
        if merge
          detalhes << Detalhe.merge(line, f.gets, definition)
        else
          detalhes << Detalhe.parse(line, definition)
        end
      end

      trailer_arquivo = TrailerArquivo.new(f.gets, definition.trailer_arquivo)
      Retorno.new({ :header_arquivo => header_arquivo,
                    :header_lote => header_lote,
                    :detalhes => detalhes,
                    :trailer_lote => trailer_lote,
                    :trailer_arquivo => trailer_arquivo  })
    end
  end
end