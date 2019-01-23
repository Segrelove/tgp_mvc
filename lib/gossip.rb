require 'csv'
require 'json'
require 'controller'
require 'pry'

class Gossip
  attr_reader :content, :author

  def initialize(content, author)
    @content = content
    @author = author
  end

  def save
    # # header = ["Auteur","Contenu"]
    # CSV.open('./db/gossip.csv',"a") do |csv|
    #   csv << Gossip.new(params[:content], params[:author])
    # end
    # CSV.open('./db/gossip.csv',"a") {|csv| @hash.to_a.each {|elem| csv << elem} }
    CSV.open('./db/gossip.csv', 'a') do |csv|
      csv << [@content, @author]
    end
    p "c'est bon"
  end

  def self.all
    numbers = CSV.read('./db/gossip.csv', headers:true)
    # p Gossip.new(params[@author], params[@content])
    # all_gossips = []
    # numbers.each do |ligne|
    #   all_gossips << Gossip.new(ligne[@author], ligne[@content])
    # end
    # p all_gossips
  end
end

