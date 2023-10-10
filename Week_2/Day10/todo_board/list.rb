require_relative "item.rb"

class List

  attr_accessor :label

  def initialize(label)
    @label = label
    @items = []
  end

  def add_item(title, deadline, description = "")
    new_item = Item.new(title,deadline,description)
    if new_item
      @items << new_item
      true
    else
      false
    end
  end

  def size
    @list.length
  end

  

end