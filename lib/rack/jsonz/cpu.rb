require 'system'

module Rack
  class Jsonz
    class CPU
      def metrics
        return {
          :count => System::CPU.count
          :load => Usagewatch.uw_load
        }
      end
    end
  end
end
