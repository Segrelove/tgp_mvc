require 'pry'
require 'controller'

class View
  attr_reader :content, :author

  def create_gossip
    puts "Quel est ton gossip?"
    content = gets.chomp
    puts "Quel est ton blaze?"
    author = gets.chomp
    return params = {content: content, author: author}
  end

  def index_gossips
    all_gossips = Gossip.all
    puts all_gossips
  end

end