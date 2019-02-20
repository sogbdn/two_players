require_relative './game'
require_relative './question'


class Player

  attr_reader :number
  attr_accessor :life

  def initialize(name)
    @name = name
    @life = 3
  end

  def decrease_life(life)
    @life = @life -life
  end


   
end
