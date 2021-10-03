class Trip < ActiveRecord::Base
    belongs_to :starship
    belongs_to :passenger


    def passenger_name 
        self.passenger.name 
    end 
end 

