class Item
  attr_accessor :title, :description
  attr_reader :deadline

  def self.valid_date?(str)
    year, mon, day = str.split("-")
    return true if year.length == 4 && mon.length == 2 && day.length == 2 && year.to_i == year.to_i && mon.to_i == mon.to_i && day.to_i == day.to_i && mon.to_i <= 12 && mon.to_i >= 1 && day.to_i >= 1 && day.to_i <= 31
    false
  end

  def initialize(title, deadline, description)
    @title = title
    if Item.valid_date?(deadline)
      @deadline = deadline 
    else
      raise Exception.new("Not a valid deadline")
    end
    @description = description
  end

  def deadline=(deadline)
    if Item.valid_date?(deadline)
      @deadline = deadline 
    else
      raise Exception.new("Not a valid deadline")
    end
  end

end
