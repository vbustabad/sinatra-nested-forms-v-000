require './environment'

module FormsLab

  class App < Sinatra::Base

    get '/' do
      "Welcome to the Nested Forms Lab!"
      "Let's navigate to the '/new'"
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @@ships = Ship.all

      erb :show
    end

  end
  
end