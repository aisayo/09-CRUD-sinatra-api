class StarshipsController < ApplicationController


# define a route that makes a get request '/starships' 
# return all the starships in our table 

get '/starships' do 
    Starship.all.to_json
end 


# take data received, through params, process that data and create a new starship object

post '/starships' do 

    # the way that we receive the body of a form, is through params

    starship = Starship.create(
        name: params[:name],
        model: params[:model],
        color: params[:color]
    )

    starship.to_json
end 

end 