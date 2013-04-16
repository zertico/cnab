module Cnab
  module PrettyInspect
    def inspect
      variables = instance_variables.map do |instance_variable|
        "#{instance_variable.to_s.gsub('@', '')}: #{instance_variable_get(instance_variable)}"
      end.join(", ")
      "<#{self.class.name} #{variables}>"
    end
  end
end