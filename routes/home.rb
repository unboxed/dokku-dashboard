module Routing
  module Home
    def self.registered app

      home_page = -> do
        @apps = `dokku apps`.split(/\n/)[1..-1]
        erb :"home", format: :html5
      end

      app.get '/', &home_page
    end
  end
end
