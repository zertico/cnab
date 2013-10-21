module Cnab
  module Exceptions
    autoload :LineNotParseable, 'cnab/exceptions/line_not_parseable'
    autoload :MissingLines, 'cnab/exceptions/missing_lines'
    autoload :NoFileGiven, 'cnab/exceptions/no_file_given'
    autoload :SegmentNotImplemented, 'cnab/exceptions/segment_not_implemented'
    autoload :VersionNotImplemented, 'cnab/exceptions/version_not_implemented'
  end
end