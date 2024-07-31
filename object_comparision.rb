# object_comparison
class Student
  attr_accessor :name, :score

  def initialize(name, score)
    @name = name
    @score = score
  end

  def self.compare(obj1, obj2)
    if obj1.score > obj2.score
      obj1
    else
      obj2
    end
  end
end

obj1 = Student.new('Raman', 72)
obj2 = Student.new('Manish', 75)
detail = Student.compare(obj1, obj2)
puts "#{detail.name}->#{detail.score}"
