require 'rack/jsonz/metric'
require 'system'
require 'usagemetric'

module Rack
  class Jsonz
    class CPU < Metric
      def metrics
        return {
          :count => System::CPU.count,
          :load => Usagewatch.uw_load,
        }
      end
    end
  end
end
