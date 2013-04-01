module Cnab
  module Helper
    def method_missing(method)
      return instance_variable_get("@#{method}") if instance_variable_defined?("@#{method}")
      instance_variable_set("@#{method}", @line[@definition.send(method)].strip)
    end

    def respond_to_missing?(method_name, include_private = false)
      return true unless definition.respond_to?(method_name)
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