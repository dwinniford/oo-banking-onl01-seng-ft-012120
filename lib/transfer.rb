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
    sender.amount
end
