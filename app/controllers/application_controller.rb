require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @teamname = params[:team][:name]
      @teammotto = params[:team][:motto]
      @heroname1 = params[:hero][0][:name]
      @heropower1 = params[:hero][1][:power]
      @herobio1 = params[:hero][2][:biography]
      @heroname2 = params[:hero][0][:name]
      @heropower2 = params[:hero][1][:power]
      @herobio2 = params[:hero][2][:biography]
      @heroname3 = params[:hero][0][:name]
      @heropower3 = params[:hero][1][:power]
      binding.pry
      @herobio13 = params[:hero][2][:biography]

      erb :team
    end
end
