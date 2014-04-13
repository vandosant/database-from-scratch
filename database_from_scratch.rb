require 'sinatra/base'

class DatabaseApp < Sinatra::Application
  get '/' do
    "Hello"
  end
end