require 'system'

module Rack
  class Jsonz
    class CPU
      def metrics
        return {
          :count => System::CPU.count
        }
      end
    end
  end
end
