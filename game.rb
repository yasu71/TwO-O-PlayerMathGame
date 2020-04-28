require "./player"
require "./question"

class Game
  attr_reader :player1, :player2

  def initialize
    @player1 = Player.new("Player1")
    @player2 = Player.new("Player2")
  end

  def start
    puts "=== New Game Started. Welcome #{player1.name} and #{player2.name} ===\n\n"
    turn
  end

  def turn
    player1.new_question
    check_score
    puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"
    puts "\n----- NEW TURN -----"
    player2.new_question
    check_score
    puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"
    puts "\n----- NEW TURN -----"
    turn
  end

  def check_score
    if player1.score.to_i == 0
      winner(player2)
    elsif player2.score.to_i == 0
      winner(player1)
    end
  end

  def winner(player)
    puts "\n#{player.name} wins with a score of #{player.score}/3\n\n----- GAME OVER -----\nGood bye!\n\n"
    exit(0)
  end
end