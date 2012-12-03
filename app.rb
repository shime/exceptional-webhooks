require "sinatra"
require "json"

class App < Sinatra::Base
  set :server, :thin

  get "/" do
    content_type :json
    @@received
  end

  post "/" do
    @@received = params.to_json
    ""
  end

  run! if app_file == $0
end
