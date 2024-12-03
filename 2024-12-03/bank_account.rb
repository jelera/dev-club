class BankAccountNotCreatedError < StandardError
end

class BankAccount
  attr_reader :balance

  def initialize(initial_balance:)
    if initial_balance.nil? || initial_balance.negative?
      raise BankAccountNotCreatedError
    end

    @balance = initial_balance

  end

  def deposit(amount:)
    # amount.is_a? Numeric && amount < 0

    if amount < 0
      return false 
    else
      @balance += amount
      return true
    end
  end
  
  def withdraw(amount:)
    
  end
end
