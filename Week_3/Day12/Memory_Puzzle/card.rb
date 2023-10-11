class Card

  def initialize(val)
    @val = val
    @face_up = false
  end

  def hide
    @face_up = false
  end

  def reveal
    @face_up = true
  end

  def info
    @val if @face_up
  end

  def to_s
  end
  
  def ==(card)
    return true if @val == card.val
    false
  end

end