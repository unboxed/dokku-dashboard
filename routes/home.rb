module Routing
  module Home
    def self.registered app

      home_page = -> do
        @apps = [{name: "NICE APP IS NICE"}]
        erb :"home", format: :html5
      end

      app.get '/', &home_page
    end
  end
end
