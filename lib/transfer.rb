class Transfer
  attr_accessor :status, :sender, :receiver, :amount
  
  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender 
    @receiver = receiver
    @amount = amount
  end 
  
  def valid?
    if sender.valid? == true && receiver.valid? == true 
      true 
    else 
      false 
    end 
  end 
  
  def execute_transaction
    if @status == "complete" || @status == "rejected"
      "Transaction has already been executed."
    elsif sender.balance >= amount && @status == "pending"
      sender.deposit(-amount) 
      receiver.deposit(amount)
      @status = "complete"
    elsif sender.balance <= amount && @status == "pending"
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end 
  end 
    
    def reverse_transfer
    end 
end
