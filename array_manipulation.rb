# array_manipulation:
class ArrayManipulator
  def even_arr(arr)
    arr.select(&:even?)
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

arr_obj = ArrayManipulator.new
puts 'Even array is : '
puts arr_obj.even_arr(arr).to_a
