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
    if sender.balance >= amount 
      sender.deposit(-amount)
      receiver.deposit(amount)
      @status = "complete"
    else 
      @status = "rejected"
    end 
    
    def reverse_transfer
    end 
end
