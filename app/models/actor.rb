class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters


    def full_name
        full = "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        characters = self.characters
        roles_arr = []
        characters.each do |character|
            roles = ''
            roles += character.name + ' - ' + character.show.name
            roles_arr << roles
        end
        roles_arr
    end
end