require 'pry'
require 'gossip'
require 'view'

class Controller
  attr_reader :content, :author

  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    my_gossip = Gossip.new(params[:content], params[:author])
    my_gossip.save
    p my_gossip
  end

  def index_gossips
    params = @view.index_gossips
  end
end 