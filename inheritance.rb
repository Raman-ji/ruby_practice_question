# inheritance.rb
class Shape
  def area_of_circle(radius)
    3.14 * (radius**2)
  end

  def area_of_square(side)
    side**2
  end
end
# circle
class Circle < Shape
  def area_of_circle(radius)
    super(radius)
  end
end
# square
class Square < Shape
  def area_of_square(side)
    super(side)
  end
end

puts 'Enter a radius'
radius = gets.chomp.to_i
circle = Circle.new

puts "Area of circle is : #{circle.area_of_circle(radius)}"

puts 'Enter a side'
side = gets.chomp.to_i
square = Square.new
puts "Area of Square is #{square.area_of_square(side)}"
