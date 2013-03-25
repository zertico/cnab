module Cnab
  module Helper
    def method_missing(method)
      instance_variable_get("@#{method}")
    end
  end
end
