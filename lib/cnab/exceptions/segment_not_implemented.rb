module Cnab
  module Exceptions
    class SegmentNotImplemented < StandardError
      def self.initialize
        super("This Segment is not implemented!")
      end
    end
  end
end