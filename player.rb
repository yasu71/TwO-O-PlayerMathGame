class Player
  attr_reader :name, :score

  def initialize(name)
    @name = name
    @score = 3
  end

  def take_score
    @score -= 1
  end

  def new_question
    new_question = Question.new
    new_question.makeQuestion(name)
    print "> "
    answer = $stdin.gets.chomp.to_i

    if answer == new_question.answer
      puts "YES! You are correct."
    else 
      puts "Seriously? No!"
      take_score
    end
  end
end
