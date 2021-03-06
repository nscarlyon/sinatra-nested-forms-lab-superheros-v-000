require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = params[:team]
      @member1 = params[:team][:members][0].values
      @member2 = params[:team][:members][1].values
      @member3 = params[:team][:members][2].values 

      erb :team
    end

end
