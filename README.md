#Bank Test Test

## User Stories:

> As a User,
So that I can add money to my bank account
I want to be able to make deposits

>As a User,
So that I can spend the money in my bank account
I want to be able to make withdrawals

>As a User,
So that I can see a history of my bank account
I want to be able to print an bank account statement with the dates, credits, debits and balance remaining


##Instructions

1. Clone this repo
2. Run Bundle - `$ bundle`
3. Start IRB in your terminal - `$ irb`
4. Require the account.rb file:
`$ irb -r './lib/account.rb' `
5. Create a bank account - `$ account = Account.new`
6. Deposit money into your account, specifying a date and amount - `$ account.deposit(10.00, '11/12/01')`
