require_relative './player'
require_relative './game'

class Question
  attr_accessor :nb1, :nb2

  def initialize
    @nb1 = rand(1..20)
    @nb2 = rand(1..20)
  end

  def response(answer, player)
    if (answer != nb1 + nb2)
      puts "#{player.name}: Seriously? No!"
      player.decrease_life(1)
      puts "#{player.life}/3"
    else 
      puts "#{player.name}: YES! You are correct."
    end 
  end

end


  