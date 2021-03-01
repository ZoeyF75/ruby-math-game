require "./Player"

class Game
  attr_accessor :players
  def initialize
    @p1 = Player.new(true)
    @p2 = Player.new(false)
    @players = [@p1,@p2]
    @current_player = @p1
  end

  def question
    num1 = rand(1...30)
    num2 = rand(1...30)
    bool = rand(1...3)
    if bool === 1 
      sign - "+"
      correctAnswer = num1 + num2
    else
      correctAnswer = num1 - num2
    end
    #current_player: What is ${num1} ${sign} ${num2}?
  end

  def current_player

  end

end