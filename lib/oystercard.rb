class Oystercard
attr_reader :balance

MAX_BALANCE = 90
ERR_EXCEED_MAX_BALANCE = "The card balance cannot exceed £90"

  def initialize(balance=0)
    @balance = balance
  end

  def top_up(amount)
    raise ERR_EXCEED_MAX_BALANCE if (@balance + amount) > MAX_BALANCE
    @balance += amount
  end

end
