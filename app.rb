require 'pry'
require './environment'

module FormsLab

  class App < Sinatra::Base

    get '/' do
      "Welcome to the Nested Forms Lab!"
      "Let's navigate to the '/new'"

      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all

      erb :'pirates/show'
    end

  end

end
