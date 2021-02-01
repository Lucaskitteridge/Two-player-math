class Questions
  attr_accessor :num1 :num2

  def self.initialize(num1, num2)
    num1 = rand(20)
    num2 = rand(20)
  end

  def self.check (user_input)
    user_input == (num1 + num2)
  end

end

