require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :superhero_form
    end

    post '/teams' do
      @team = Team.new(params[:team])
      @team.heroes = params[:team][:member]
      erb :team
    end

end
