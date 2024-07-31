# object_initialization:
class Person
  attr_accessor :name, :age, :gender
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end
end

puts 'Enter name : '
name = gets.chomp

puts 'Enter age : '
age = gets.chomp

puts 'Enter Gender : '
gender = gets.chomp

person = Person.new(name, age, gender)
puts person.name
puts person.age
puts person.gender
