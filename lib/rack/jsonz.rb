require "rack/jsonz/version"
require "rack/jsonz/cpu"

module Rack
  class Jsonz
    def initialize(app)
      @app = app
    end

    def call(env)
      if env["PATH_INFO"].eql? "/jsonz"
        [
          200,
          { "Content-Type" => "application/json" },
          [self.data.to_json]
        ]
      else
        @app.call(env)
      end
    end

    protected
    def data
      ret = {}

      cpu = CPU.new
      p cpu.each_metric
      cpu.each_metric do |k, v|
        ret["/#{cpu.metric_group}/#{k}"] = v
      end

      return ret
    end
  end
end
