require 'sinatra/base'

class DatabaseApp < Sinatra::Application
  get '/' do
    erb :index
  end

  post '/' do
    params[:create_object]
  end
end