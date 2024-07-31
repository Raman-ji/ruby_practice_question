# 1. **Class and Object Creation:** Create a class called "Rectangle" with attributes "length" and "width". Implement methods to calculate the area and perimeter of the rectangle. Create an object of the class and demonstrate the usage of these methods.

class Rectangle

  def initialize(length, width)
    @length = length
    @width = width
  end
  
  def area()
    @length * @width
  end

  def perimeter()
    2 * (@length + @width)
  end

end

puts "Enter length :"
length = gets.chomp.to_i

puts "Enter width :"
width = gets.chomp.to_i

rec_1 = Rectangle.new(length, width)

puts "Area is #{rec_1.area}" 
puts "Perimeter is #{rec_1.perimeter}"