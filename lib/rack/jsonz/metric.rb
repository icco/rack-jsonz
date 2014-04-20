module Rack
  class Jsonz
    class Metric
      def each_metric(&block)
        self.metrics.each_pair(&block)
      end
    end
  end
end
