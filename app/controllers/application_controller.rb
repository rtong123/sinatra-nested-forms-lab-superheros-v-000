require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do

      @teamname = params[:team][:name]
      @teammotto = params[:team][:motto]
      @heroname1 = params [:hero][0][:name]
      @heropower1 = params [:hero][0][:power]
      @herobio1 = params [:hero][0][:biography]

      erb :team
    end
end
