class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network
  

    def actors_list
        actors =[]
        self.actors.each do |actor|
            actors_string =''
            actors_string += actor.first_name + ' ' + actor.last_name
            actors << actors_string
        end
        actors
    end
end