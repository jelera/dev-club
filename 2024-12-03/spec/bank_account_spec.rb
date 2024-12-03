require_relative '../bank_account'

# Write tests that cover edge cases

describe BankAccount do
  it "returns the balance if the balance is not negative" do
    expect(BankAccount.new(initial_balance: 0).balance).to be >= 0
  end

  # NEEDS WORK
  xit "raises an error if the argument is not a number" do
    expect{BankAccount.new(initial_balance: "0")}.to raise_error(BankAccountNotCreatedError)
  end

  it "raises an error if the argument is not negative number" do
    expect{BankAccount.new(initial_balance: -1)}.to raise_error(BankAccountNotCreatedError)
  end

  it "raises an error if the argument is nil" do
    expect{BankAccount.new(initial_balance: nil)}.to raise_error(BankAccountNotCreatedError)
  end

  it "deposits when the amount is positive" do
    initial_balance = 0
    bank_account = BankAccount.new(initial_balance: initial_balance)

    deposit_amount = 5
    bank_account.deposit(amount: deposit_amount)

    expect(bank_account.balance).to be >= initial_balance 
    expect(bank_account.balance).to eq deposit_amount
  end

  it "does not deposit when the amount is positive" do
    initial_balance = 0
    bank_account = BankAccount.new(initial_balance: initial_balance)

    deposit_amount = -5
    expect(bank_account.deposit(amount: deposit_amount)).to be false
  end

  xit "withdrawals must be positive and should not exceed the balance" do
    initial_balance = 0
    bank_account = BankAccount.new(initial_balance: initial_balance)

    bank_account.withdraw

    expect(bank_account)
  end
end
