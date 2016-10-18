require "account"

describe Account do

  subject(:account) { described_class.new }
  let(:date) { double :date }

  before(:all) do
    @amount = 10.00
    @larger_amount = 20.00
  end

  it 'account has initial balance of 0' do
    expect(subject.balance).to eq(0)
  end

  describe '#deposit' do
    it 'adds 10.00 to my balance' do
      subject.deposit(@amount, date)
      expect(subject.balance).to eq(@amount)
    end
  end

  describe '#withdraw' do
    it 'subtracts 10.00 to my balance' do
      subject.deposit(@larger_amount, date)
      subject.withdraw(@amount, date)
      expect(subject.balance).to eq(@amount)
    end

    it 'raises an error when withdrawing more than balance' do
      expect {subject.withdraw((Account::MINIMUM_BALANCE + 1), date)}.to raise_error "cannot withdraw more than balance"
    end
  end

end
