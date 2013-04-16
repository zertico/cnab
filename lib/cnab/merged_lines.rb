module Cnab
  class MergedLines
    def initialize(line1, line2)
      @line1 = line1
      @line2 = line2
    end

    def method_missing(method_name)
      return @line1.send(method_name) if @line1.respond_to?(method_name)
      return @line2.send(method_name) if @line2.respond_to?(method_name)
      super
    end

    def respond_to_missing?(method_name, include_private = false)
      return true if @line1.respond_to?(method_name)
      return true if @line2.respond_to?(method_name)
      super
    end
  end
end