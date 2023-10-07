class Employee
  attr_reader :name, :title
  def initialize(name,title)
    @title = title
    @name = name
    @earnings = 0
  end

  def pay(amt)
    @earnings += amt
  end

end
