class Player
  attr_accessor :lives
  def initialize(isP1)
    lives = 3
    isP1 ? player1 = P1.new : player2 = P2.new
  end
end