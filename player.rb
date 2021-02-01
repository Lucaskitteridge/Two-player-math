class Player
  attr_accessor :player, :lives

  def initialize(name)
    @player = player
    @lives = 3
  end

  def wrong
    @lives -= 1
    puts "Seriously? No!"
  end

  def right
    puts "YES! You are correct!"
  end

  def gameover
    @lives == 0
  end
end