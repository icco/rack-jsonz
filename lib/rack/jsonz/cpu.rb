require 'rack/jsonz/metric'

require 'system'
require 'usagewatch_ext'

module Rack
  class Jsonz
    class CPU < Metric
      def metrics
        return {
          :count => System::CPU.count.to_f,
          :load => Usagewatch.uw_load.to_f,
        }
      end

      def metric_group
        "cpu"
      end
    end
  end
end
