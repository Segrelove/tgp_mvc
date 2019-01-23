require 'pry'
require 'controller'

class View
  # attr_reader :content, :author

  def create_gossip
    puts "Quel est ton gossip?"
    content = gets.chomp
    puts "Quel est ton blaze?"
    author = gets.chomp
    return params = {content: content, author: author}
  end

  def index_gossips
    gossip = Gossip.all
    p gossip
  end

end