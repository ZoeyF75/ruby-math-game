require "./Player"
require "./P1"
require "./P2"
require "./Game"
require "./Question"

currentGame = Game.new
 
while currentGame.p1.lives  > 0 && currentGame.p2.lives > 0 do
  currentQuestion = Question.new
  player = currentGame.currentPlayer.name
  opposer = currentGame.currentOpposer.name
  puts "#{player}: What is #{currentQuestion.num1} #{currentQuestion.sign} #{currentQuestion.num2}?"
  userAnswer = gets.chomp.to_i
 
  if currentQuestion.correctAnswer === userAnswer 
     currentGame.currentPlayer.lives += 0 
     puts "Yes! You are correct."
  else
     currentGame.currentPlayer.lives -= 1
     puts "Womp, womp, womp...incorrect."
  end
  puts "#{player}: #{currentGame.currentPlayer.lives}/3 vs #{opposer}: #{currentGame.currentOpposer.lives}/3\n
  ----- NEW TURN -----"
  currentGame.current_player
  if currentGame.currentPlayer.lives === 0 
    puts "#{opposer} wins with a score of #{currentGame.currentOpposer.lives}/3\n
    ----- GAME OVER -----\n
    Good bye!"
  end
end
    