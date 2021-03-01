class Question
  attr_reader :correctAnswer, :num1, :sign, :num2
  def initialize
    @num1 = rand(1...30)
    @num2 = rand(1...30)
    bool = rand(1...3)
    if bool === 1 
      @sign = "+"
      @correctAnswer = num1 + num2
    else
      @sign = "-"
      @correctAnswer = num1 - num2
    end
  end
end