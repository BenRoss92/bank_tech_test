require "account"

describe Account do

  subject { described_class.new }
  # let(:transaction) { double :transaction }
  # let(:date) { double :date }
  # let(:balance) { double :balance }
  # let(:date) { double :date }

  it 'account has initial balance of 0' do
    expect(subject.balance).to eq(0)
  end

  describe '#deposit' do
    it 'adds 10.00 to my balance' do
      date = '18/10/16'
      subject.deposit(10.00, date)
      expect(subject.balance).to eq(10.00)
    end
  end

  describe '#withdraw' do
    it 'subtracts 10.00 to my balance' do
      date = '19/10/16'
      subject.deposit(20.00, date)
      subject.withdraw(10.00, date)
      expect(subject.balance).to eq(10.00)
    end

    it 'raises an error when withdrawing more than balance' do
      date = '19/10/16'
      expect {subject.withdraw(10.00, date)}.to raise_error "cannot withdraw more than balance"
    end
  end

end
