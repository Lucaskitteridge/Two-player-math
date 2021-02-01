class Questions
  attr_accessor :num1, :num2

  def initialize
    @num1 = rand(10)
    @num2 = rand(10)
  end

  def self.num1
    @num1 = rand(10)
  end

  def self.num2
    @num2 = rand(10)
  end

  def check (response)
    response == (@num1 + @num2)
  end

end

