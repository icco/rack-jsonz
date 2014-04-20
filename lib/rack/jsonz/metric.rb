module Rack
  class Jsonz
    class Metric
      def each_metric 
        self.metrics.each_pair
      end
    end
  end
end
