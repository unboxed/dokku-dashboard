ENV['RACK_ENV'] ||= 'development'
require 'bundler'
Bundler.require :default, ENV['RACK_ENV'].to_sym

require_relative 'routes/home.rb'

Tilt.register Tilt::ERBTemplate, 'html.erb'

class DokkuDashboard < Sinatra::Base
  register Routing::Home

  register Sinatra::ConfigFile

  config_file 'config/app.yml'
end
