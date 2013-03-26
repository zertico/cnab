module Cnab
  module Exceptions
    class NoFileGiven < StandardError
      def self.initialize
        super("No Cnab File was given!")
      end
    end
  end
end