require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :team
    end

    post '/team' do
        @team_name = params[:team][:name]
        @team_motto = params[:team][:motto]
        @hero1 = params[:team][:heros][0]
        @hero2 = params[:team][:heros][1]
        @hero3 = params[:team][:heros][2]
        @heros = [@hero1, @hero2, @hero3]
        erb :super_hero
    end

end
