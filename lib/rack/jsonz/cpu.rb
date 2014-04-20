require 'rack/jsonz/metric'

require 'system'
require 'usagewatch'
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
    end
  end
end
