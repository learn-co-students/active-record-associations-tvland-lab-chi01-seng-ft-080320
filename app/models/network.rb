class Network < ActiveRecord::Base
  has_many :shows


  def sorry
    "We're sorry about passing on John Mulaney's pilot"
  end

end

# - Define a method in the `Show` class called `#actors_list` that returns an
#   Array of the full names of each actor associated with the a show. Remember,
#   a show should have many actors through characters.
