class Player
  attr_accessor :lives, :name
  def initialize(isP1)
    @lives = 3
    isP1 ? @name = "player1" : @name = "player2"
  end
end