require 'sinatra/base'

class DatabaseApp < Sinatra::Application
  get '/' do
    erb :index, locals: {:objects => DB[:objects].to_a}
  end

  post '/' do
    DB[:objects].insert(:name => params[:create_object])
    redirect '/'
  end
end