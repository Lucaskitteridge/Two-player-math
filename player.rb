class Player
  attr_accessor :player :life

  def initialize(name)
    @player = player
    @life = 3
  end

  def wrong
    @life -= 1
    puts "Seriously? No!"
  end

  def right
    puts "YES! You are correct!"
  end

  def gameover
    @life == 0
  end
end