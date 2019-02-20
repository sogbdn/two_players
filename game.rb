require_relative './player'
require_relative './question'

class Game

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @players = [@player1, @player2]
  end
  
  def start_game
    
    while (@player1.life != 0 || @player2.life != 0)
      print question = Question.new
      puts "What does #{question.nb1} plus #{question.nb2} equal?"
      answer = gets.chomp 
      

      @player1.decrease_life(3)
    end

  end

  def end_of_game
    if (@player1.life == 0 || @player2.life == 0)
      puts "---------GAME OVER----------"
      puts "Good bye"
    end
  end

end
  
  

