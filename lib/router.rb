require 'pry'
require 'controller'

class Router

  #Router.new lancé par app.rb va automatiquement créer une instance "@controller"
  def initialize
    @controller = Controller.new
  end

  def perform
    puts "BIENVENUE DANS NOTRE GOSSIP PROJECT MAMENE"
    while true

      puts "Que veux-tu faire?"
      puts "1. Je veux créer un gossip"
      puts "4. Je veux quitter l'app"
      params = gets.chomp.to_i

      case params
      when 1
        puts "Tu as choisis de créer un gossip"
        @controller.create_gossip
      when 4
        puts "Tu as choisi de quitter l'app"
        break
      else
        puts "Ce choix n'existe pas, merci de réessayer"
      end
    end
  end
end