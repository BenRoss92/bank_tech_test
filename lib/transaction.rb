class Transaction

  attr_reader :history

  def initialize(amount, date, balance, transaction_type)
    @transaction = {date => [amount, transaction_type, balance]}
    @history = []
  end

  def add_to_history
    @history << @transaction
  end

end
