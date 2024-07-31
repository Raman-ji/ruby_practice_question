# 7. **Flow Control
class GuessingGame
  attr_accessor :random_number

  def initialize(random_number)
    @random_number = random_number
  end

  def guess_number(number)
    if number > random_number
      'higher'
    elsif number < random_number
      'lower'
    else
      'correct'
    end
  end
end
random_number = Random.rand()

game = GuessingGame.new(random_number)
loop do
  puts 'Please enter a number : '
  number = gets.chomp.to_i

  result = game.guess_number(number)

  case result
  when 'higher'
    puts 'its higher'
  when 'lower'
    puts 'its lower'
  else
    puts 'its correct'
  end
end
