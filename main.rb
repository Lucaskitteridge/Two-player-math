require_relative 'player'
require_relative 'question'

Player1 = Player.new('Player 1')
Player2 = Player.new('Player 2')

loop do

  puts "Player 1: What does #{Questions.num1} plus #{Questions.num2} equal?"
  
  response = gets.chomp.to_i
  
  if Questions.check(response)
    Player1.right
  else
    Player1.wrong
  end

  if Player1.gameover
    break puts "Player 2 wins with a score of #{Player2.lives}/3"
  end

  puts "P1 #{Player1.lives}/3 vs P2 #{Player2.lives}/3"
  puts " ----- NEW TURN -----"

  puts "Player 2: What does #{Questions.num1} plus #{Questions.num2} equal?"
  
  response = gets.chomp.to_i
  
  if Questions.check(response)
    Player2.right
  else
    Player2.wrong
  end

  if Player2.gameover
    break puts "Player1 wins with a score of #{Player1.lives}/3"
  end 

  puts "P1 #{Player1.lives}/3 vs P2 #{Player2.lives}/3"
  puts " ----- NEW TURN -----"
  
end  

puts "----- GAME OVER -----"
puts "Good bye!"