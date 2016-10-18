class Transaction

  attr_reader :history

  def initialize(amount, date, balance, transaction_type)
    @transaction = {date: date, amount: amount, transaction_type: transaction_type, balance: balance}
    @history = []
  end

  def add_to_history
    @history << @transaction
  end

end
