require 'rack/jsonz/metric'

require 'system'
require 'usagewatch_ext'

module Rack
  class Jsonz
    class CPU < Metric
      def metrics
        return {
          :count => System::CPU.count,
          :load => Usagewatch.uw_load,
        }
      end

      def metric_group
        "cpu"
      end
    end
  end
end
