require "./Player"

class Game 
  attr_reader :p1, :p2, :currentPlayer, :currentOpposer 
  def initialize
    @p1 = Player.new(true)
    @p2 = Player.new(false)
    @currentPlayer = @p1
    @currentOpposer = @p2
  end

  def current_player
    if self.currentPlayer === @p1 
          self.currentPlayer === self.p2 
          self.currentOpposer === self.p1
    else
       self.currentPlayer === self.p1
       self.currentOpposer === self.p2
    end
  end
end