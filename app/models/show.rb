class Show < ActiveRecord::Base
belongs_to :network
has_many :characters
has_many :actors, through: :characters


    def actors_list
       x = self.actors.map do |finder|
        finder.full_name
       end
    end


end


# - Define a method in the `Show` class called `#actors_list` that returns an
#   Array of the full names of each actor associated with the a show. Remember,
#   a show should have many actors through characters.
