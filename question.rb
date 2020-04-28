class Question
  attr_reader :numberOne, :numberTwo
  
  def initialize
    @numberOne = rand(1..20)
    @numberTwo = rand(1..20)
  end

  def makeQuestion(name)
    puts "#{name}: What does #{numberOne} plus #{numberTwo} equal?"
  end

  def answer
    numberOne + numberTwo
  end

end