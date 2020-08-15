class Actor < ActiveRecord::Base
has_many :characters
has_many :shows, through: :characters

    def full_name
        name = []
        name << self.first_name
        name << self.last_name
        name.join(" ")
    end

    def list_roles
        # shows = self.shows.map(&:name)
        # characters = self.characters.map(&:name)
        # x = Hash[shows.zip(characters)]
        # x.map {|k,v| "#{k} - #{v}"}.flatten.each_slice(2).to_a
        "#{self.characters.first.name} - #{self.shows.first.name}"
    end

end
