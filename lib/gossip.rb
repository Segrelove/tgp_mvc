require 'csv'
require 'controller'

class Gossip
  attr_reader :content, :author

  def initialize(author, content)
    @content = content
    @author = author
  end

  def save
    File.open('./db/gossip.csv', 'a') do |csv|
      csv << [@author, @content].join(',')
    end
  end

end