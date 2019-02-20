require_relative './player'
require_relative './question'

class Game

  attr_accessor :player1, :player2, :players 

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @players = [@player1, @player2].shuffle
  end

  def get_current_player
    @players[0]
  end  

  def next_turn
    @players.rotate!  
  end  
  
  def start_game
    while (@player1.life != 0 || @player2.life != 0)
      question = Question.new
      current_player = get_current_player
      puts "#{current_player.name}: What does #{question.nb1} plus #{question.nb2} equal?"
      answer = gets.chomp.to_i 
      question.response(answer, current_player)
      puts "--------------------------------"
      next_turn
    end
  end_of_game  
  end

  def end_of_game
      puts "------------GAME OVER------------"
      puts "Good bye"
  end

end

  
  

