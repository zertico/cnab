module Cnab
  module Exceptions
    class VersionNotImplemented < StandardError
      def self.initialize
        super("This Version is not implemented!")
      end
    end
  end
end