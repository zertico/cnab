module Cnab
  class Line
    def initialize(line, definition)
      raise Exceptions::LineNotParseable unless line.size == 242

      @line = line
      @definition = definition
    end

    def method_missing(method_name)
      return instance_variable_get("@#{method_name}") if instance_variable_defined?("@#{method_name}")
      instance_variable_set("@#{method_name}", @line[@definition.send(method_name)].strip)
    end

    def respond_to_missing?(method_name, include_private = false)
      return true if definition.respond_to?(method_name)
      super
    end

    def inspect
      variables = instance_variables.map do |instance_variable|
        "#{instance_variable.to_s.gsub('@', '')}: \"#{instance_variable_get(instance_variable)}\""
      end.join(", ")
      "<#{self.class.name} #{variables}>"
    end
  end
end