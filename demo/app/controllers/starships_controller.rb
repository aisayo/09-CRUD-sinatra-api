class StarshipsController < ApplicationController

    # index / read 
    get '/starships' do 
        Starship.all.to_json
    end 

    # create
    post '/starships' do 
        # starship = Starship.create(
        #     name: params[:name],
        #     model: params[:model],
        #     color: params[:color]
        # )
        starship = Starship.create(params)
        starship.to_json
    end 


end 