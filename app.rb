class MySinatraApp < Sinatra::Base
  # set :views, Proc.new    {File.join(root, "views/")}
  # set :public_folder , Proc.new {File.join(root,"public")}
  #

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index, locals: {now: Time.now, myname: 'X Coan'}
  end

  get '/song' do
    erb :song
  end
end
