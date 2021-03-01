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
    if @currentPlayer == @p1 
          @currentPlayer = @p2
          @currentOpposer = @p1
    else
       @currentPlayer = p1
       @currentOpposer = p2
    end
  end
end