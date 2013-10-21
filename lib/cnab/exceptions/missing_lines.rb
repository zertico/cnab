module Cnab
  module Exceptions
    class MissingLines < StandardError
      def self.initialize
        super("There are some lines missing!")
      end
    end
  end
end