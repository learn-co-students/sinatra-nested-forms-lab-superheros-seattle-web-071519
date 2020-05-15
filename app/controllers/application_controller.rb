require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :team
    end

    post '/teams' do
        @team_name = params[:name]
        @team_motto = params[:motto]
        @hero1 = params[:hero1]
        @hero2 = params[:hero2]
        @hero3 = params[:hero3]
        
        erb :super_hero
    end



end
