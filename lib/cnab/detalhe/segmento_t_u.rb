module Cnab
  module Detalhe
    class SegmentoTU
      def initialize(segmento_t, segmento_u)
        @segmento_t = segmento_t
        @segmento_u = segmento_u
      end

      def method_missing(method_name)
        return @segmento_t.send(method_name) if @segmento_t.respond_to?(method_name)
        return @segmento_u.send(method_name) if @segmento_u.respond_to?(method_name)
        super
      end

      def respond_to_missing?(method_name, include_private = false)
        return true if @segmento_t.respond_to?(method_name)
        return true if @segmento_u.respond_to?(method_name)
        super
      end
    end
  end
end