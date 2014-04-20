require "rack/jsonz/version"

module Rack
  module Jsonz
    def initialize(app)
      @app = app
    end

    def call(env)
      if env["PATH_INFO"].eql? "/jsonz"
        [
          200,
          { "Content-Type" => "text/plain" },
          ["OK"]
        ]
      else
        @app.call(env)
      end
    end
  end
end
