module Cnab
  module Helper
    def method_missing(method)
      instance_variable_get("@#{method}")
    end

    def respond_to_missing?(method_name, include_private = false)
      return true unless instance_variable_get("@#{method_name}").nil?
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