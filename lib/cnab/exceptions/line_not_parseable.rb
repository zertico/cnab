module Cnab
  module Exceptions
    class LineNotParseable < StandardError
      def self.initialize
        super("This line does not have the expected size!")
      end
    end
  end
end