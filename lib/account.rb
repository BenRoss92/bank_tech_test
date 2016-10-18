class Account

attr_reader :balance

MINIMUM_BALANCE = 0

  def initialize(transaction = Transaction)
    @transaction = transaction
    @balance = 0
  end

  def deposit(amount, date)
    @balance += amount
    balance = @balance
    credit = :credit
    @transaction.new(amount, date, balance, credit)
  end

  def withdraw(amount, date)
    raise "cannot withdraw more than balance" if (@balance - amount < MINIMUM_BALANCE)
    @balance -= amount
    balance = @balance
    debit = :debit
    @transaction.new(amount, date, balance, debit)
  end

end
