require_relative '../models/comedian.rb'

class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
    else
      @comedians = Comedian.all
    end
    @specials = Special.where(comedian_id: @comedians.pluck(:id))
    erb :'comedian/index'
  end

  get '/comedians/new' do
    erb :'comedian/new'
  end

  post '/comedians' do
  comedian = Comedian.create(params[:comedian])
  redirect "/comedians"
  end



end
