# Object Interaction
class BankAccount
  attr_accessor :account_number, :balance

  def initialize(account_number, balance)
    @account_number = account_number
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise 'Insufficient balance' if amount > @balance
    @balance -= amount
  end

  def self.transfer(amount, from_account, to_account)
    raise 'Destination account should not be nil ' if to_account.nil?
    raise 'Source account should not be nil' if from_account.nil?
    from_account.withdraw(amount)
    to_account.deposit(amount)
  rescue StandardError => e
    puts e.message
  end
end

puts 'Enter Object 1 account number and available balance'
account_number = gets.chomp.to_i
balance = gets.chomp.to_i
obj1 = BankAccount.new(account_number, balance)

puts 'Enter Object 2 account number and available balance'
account_number = gets.chomp.to_i
balance = gets.chomp.to_i

obj2 = BankAccount.new(account_number, balance)

puts 'Enter transfer amount from first object to second object'
amount = gets.chomp.to_i

BankAccount.transfer(amount, obj1, obj2)
puts "First object balance : #{obj1.balance}"
puts "Second object balance : #{obj2.balance}"
