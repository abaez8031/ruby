class Card
  attr_reader :val
  
  def initialize(val, revealed = false)
    @val = val
    @revealed = revealed
  end

  def hide
    @revealed = false
  end

  def reveal
    @revealed = true
  end

  def revealed?
    @revealed
  end

  def info
    @val if @revealed
  end

  def to_s
    revealed? ? @val.to_s : " "
  end
  
  def ==(card)
    @val == card.val
  end

end