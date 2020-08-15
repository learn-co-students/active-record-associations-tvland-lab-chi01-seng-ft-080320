Actor.all.destroy_all
Character.all.destroy_all
Network.all.destroy_all



puts "seeedddiinngngg"
 peter = Actor.new(:first_name => "Peter", :last_name => "Dinklage")
 tyrion = Character.new(:name => "Tyrion Lannister")
 tyrion.actor = peter
 thrones = Show.new(:name => "Game of Thrones")
 tyrion.show = thrones
 tyrion.save
 midget = Character.new(:name => "Little Man")
 midget.actor = peter
 gnomes = Show.new(:name => "Gnomes in Paris")
 midget.show = gnomes
 midget.save

 nbc = Network.create(:channel => 4, :call_letters => "NBC")
 nbc.shows << thrones


 puts "seeeedddeeeeddd"