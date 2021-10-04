class PizzaController < ApplicationController

    get '/pizzas' do 
        Pizza.all.to_json
    end 

    post '/pizzas' do 
        pizza = Pizza.create(
            name: params[:name],
            ingredients: params[:ingredients],
            desc: params[:desc],
            order_id: params[:order_id]
        )
        pizza.to_json
    end 

    patch '/pizzas/:id' do 
        pizza = find_pizza
        pizza.update(params)
        pizza.to_json
    end 

    delete '/pizzas/:id' do 
        pizza = find_pizza
        pizza.destroy
    end 


private 

    def find_pizza 
        Pizza.find_by_id(params[:id])
    end 

end 