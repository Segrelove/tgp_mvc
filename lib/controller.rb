require 'pry'
require 'gossip'
require 'view'

class Controller
  attr_reader :content, :author

  def create_gossip
    my_gossip = Gossip.new("Jean-Michel Concierge", "Féfé est de Bordeaux")
    my_gossip.save
  end

end 