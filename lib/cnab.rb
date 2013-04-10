require "cnab/version"
require "yaml"

module Cnab
  autoload :Line, 'cnab/line'
  autoload :Detalhe, 'cnab/detalhe'
  autoload :Retorno, 'cnab/retorno'
  autoload :Definition, 'cnab/definition'
  autoload :Definitions, 'cnab/definitions'

  autoload :Exceptions, 'cnab/exceptions'

  def self.parse(file = nil, merge = false, version = '08.7')
    raise Exceptions::NoFileGiven if file.nil?

    definition = Cnab::Definition.new(version)

    File.open(file, 'rb') do |f|
      header_arquivo = Line.new(f.gets, definition.header_arquivo)
      header_lote = Line.new(f.gets, definition.header_lote)

      detalhes = []
      while(line = f.gets)
        if line[7] == "5"
          trailer_lote = Line.new(line, definition.trailer_lote)
          break
        end
        if merge
          detalhes << Detalhe.merge(line, f.gets, definition)
        else
          detalhes << Detalhe.parse(line, definition)
        end
      end

      trailer_arquivo = Line.new(f.gets, definition.trailer_arquivo)
      Retorno.new({ :header_arquivo => header_arquivo,
                    :header_lote => header_lote,
                    :detalhes => detalhes,
                    :trailer_lote => trailer_lote,
                    :trailer_arquivo => trailer_arquivo  })
    end
  end

  def self.root_path
    File.expand_path(File.join(File.dirname(__FILE__), '..'))
  end

  def self.lib_path
    File.join(root_path, 'lib')
  end
end