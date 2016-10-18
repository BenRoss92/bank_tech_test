class Account

attr_reader :balance

MINIMUM_BALANCE = 0

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise "cannot withdraw more than balance" if (@balance - amount < MINIMUM_BALANCE)
    @balance -= amount
  end

end
