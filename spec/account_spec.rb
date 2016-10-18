require "account"

describe Account do

  subject { described_class.new }

  it 'account has initial balance of 0' do
    expect(subject.balance).to eq(0)
  end

  describe '#deposit' do
    it 'adds 10.00 to my balance' do
      subject.deposit(10.00)
      expect(subject.balance).to eq(10.00)
    end
  end

  describe '#withdraw' do
    it 'subtracts 10.00 to my balance' do
      subject.deposit(20.00)
      subject.withdraw(10.00)
      expect(subject.balance).to eq(10.00)
    end

    it 'raises an error when withdrawing more than balance' do
      expect {subject.withdraw(10.00)}.to raise_error "cannot withdraw more than balance"
    end
  end

end
