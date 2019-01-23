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
    header = ["Auteur","Contenu"]
    CSV.open('./db/gossip.csv',"a") do |csv|
      row = CSV::Row.new(header,[])
      row["Auteur"] = @author
      row["Contenu"] = @content
      csv << row
    end
  end

  def self.all
    numbers = CSV.read('./db/gossip.csv', headers:true)
  #   all_gossips = []
  #   numbers.each do |ligne|
  #     gossip_provisoire = Gossip.new(ligne[@content], ligne[@author])
  #     all_gossips << gossip_provisoire
  #   end
  #   return all_gossips
  puts numbers
  end

end
