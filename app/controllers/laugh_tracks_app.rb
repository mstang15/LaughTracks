require_relative '../models/comedian.rb'

class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
    else
      @comedians = Comedian.all
    end
    erb :'comedian/index'
  end

  # get '/comedians?age=34' do
  #   @comedians = Comedian.all
  #   erb :'comedian/34age'
  # end

  # put '/comedians?age=34' do
  #   @comedians = Comedian.all
  #   erb :'comedian/34age'
  # end

end
