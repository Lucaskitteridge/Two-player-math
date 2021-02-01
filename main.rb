require_relative 'player'
require_relative 'turn'

Player1 = Player.new('Player 1')
Player2 = Player.new('Player 2')

loop do

  if Player1.gameover
    break puts "#{Player2} wins with a score of #{Player2.life}/3"
  end

  def turn(Player1)
    puts "Player 1: What does #{Question.num1} plus #{Question.num2} equal?"
  
    response = gets.chomp.to_i
  
    if Question.check(response)
      player.right
    else
      player.wrong
    end

  end

  if Player2.gameover
    break puts "#{Player1} wins with a score of #{Player1.life}/3"
  end 

  def turn(Player2)
    puts "Player 2: What does #{Question.num1} plus #{Question.num2} equal?"
  
    response = gets.chomp.to_i
  
    if Question.check(response)
      player.right
    else
      player.wrong
    end

  end
  
end  

puts "----- GAME OVER -----"
puts "Good bye!"