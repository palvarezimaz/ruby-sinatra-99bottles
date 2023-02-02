require 'sinatra'

configure do
  set :protection, except: [:frame_options]
end

require './main'

run Sinatra::Application
