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

    # read action / show: showing 1 resource details 

    get '/starships/:id/:query' do 
        # find the starship with the given id 
        # respond with json format of that object
        starship = Starship.find(params[:id])
        starship.to_json
    end 

    patch '/starships/:id' do 
        binding.pry
        starship = Starship.find(params[:id])
        starship.update(params)
        starship.to_json
    end 

end 