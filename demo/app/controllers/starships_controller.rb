class StarshipsController < ApplicationController

    get '/starships' do 
        Starship.all.to_json
    end 

    post '/starships' do 
        starship = Starship.create(
            name: params[:name],
            model: params[:model],
            color: params[:color]
        )
        starship.to_json
    end 

end 