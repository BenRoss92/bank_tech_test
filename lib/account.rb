class Account

attr_reader :balance

MINIMUM_BALANCE = 0

  def initialize
    @balance = 0
  end

  def deposit(amount, date)
    @balance += amount
    # Transaction.new(date, amount)
  end

  def withdraw(amount, date)
    raise "cannot withdraw more than balance" if (@balance - amount < MINIMUM_BALANCE)
    @balance -= amount
    # Transaction.new(date, amount, @balance, :deposit)
  end

end
