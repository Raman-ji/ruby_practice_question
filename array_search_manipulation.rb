# array_search_and_manipulation
class ArrayProcessor
  @my_arr = []

  def initialize(my_arr)
    @my_arr = my_arr
  end

  def search(element)
    @my_arr.find_index(element)
  end

  def square
    @my_arr.map do |x|
      x**2
    end
  end
end

puts'Enter the size of the array'
n = gets.chomp.to_i

puts'Enter the element in the array'
arr = []

n.times do
  element = gets.chomp.to_i
  arr.push(element)
end

arr_obj = ArrayProcessor.new(arr)

puts 'Enter the element for searching : '
element = gets.chomp.to_i

puts arr_obj.search(element)
puts arr_obj.square
