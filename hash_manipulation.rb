# hash_manipulation
class UserDatabase
  def initialize
    @database = {}
  end

  def add_user(username, user_branch, mobile_number)
    @database[username] = {
      branch: user_branch,
      mobile: mobile_number
    }
  end

  def retrieve(key)
    return 'Database is empty ' if @database.empty?
    return 'Invalid user ' unless @database.key?(key)
    "User details is #{@database[key]}"
  end

  def delete_user(key)
    return 'Database is empty ' if @database.empty?
    return 'Invalid user ' unless @database.key?(key)
    @database.delete(key)
    'Delete it !'
  end
end

database = UserDatabase.new

loop do
  puts 'Please enter your choice'

  puts'1.Add'
  puts'2.Retrive'
  puts'3.Delete'
  puts'4.Stop manipulation'

  choice = gets.chomp.to_i

  case choice
  when 1
    puts "Enter a user's username"
    username = gets.chomp
    puts 'for user details please enter there branch and mobile number : '
    branch = gets.chomp
    mobile_number = gets.chomp.to_i
    database.add_user(username, branch, mobile_number)

  when 2
    puts 'Enter username :'
    username = gets.chomp
    puts database.retrieve(username)

  when 3
    puts 'Enter username for delete :'
    username = gets.chomp
    puts database.delete_user(username)

  when 4

    break

  else
    puts 'Enter valid number'
  end
end
