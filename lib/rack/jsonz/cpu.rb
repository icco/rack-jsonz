require 'rack/jsonz/metric'
require 'system'
require 'usagewatch'

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
