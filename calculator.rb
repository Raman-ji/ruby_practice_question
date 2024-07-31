# **Flow Control - Calculator:** Create a Calculator class with methods for addition, subtraction, multiplication, and division. Implement flow control to allow the user to choose the operation and input the numbers. Display the result to the user.

class Calculator

  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end
  
  def addition
    @num1 + @num2
  end

  def subtraction
    @num1 - @num2
  end

  def multiplication
    @num1 * @num2
  end

  def division
    begin
      (@num1 / @num2).to_f
    rescue Exception => e
      puts e
    end
    
  end
end

puts"Enter any two number "
num1 = gets.chomp.to_f
num2 = gets.chomp.to_f

calc = Calculator.new(num1, num2)

puts "Please enter your choice"

puts"1.Addition"
puts"2.Substraction"
puts"3.Multiplication"
puts"4.Division"

choice = gets.chomp.to_i

case choice
when 1
  puts calc.addition
when 2
  puts calc.subtraction
when 3
  puts calc.multiplication
when 4
  puts calc.division
else
  puts"Enter valid number"
end