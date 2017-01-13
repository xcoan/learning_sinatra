class MySinatraApp < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index, locals: {now: Time.now, myname: 'X Coan'}
  end
end
