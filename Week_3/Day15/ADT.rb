class Stack

  def initialize
    @underlying_array = []
  end

  def push(el)
    @underlying_array << el
    el
  end

  def pop
    @underlying_array.pop
  end
  
  def peek
    @underlying_array[-1]
  end
end

class Queue
  
  def initialize
    @underlying_array = []
  end

  def enqueue(el)
    @underlying_array << el
    el
  end

  def dequeue
    @underlying_array.shift
  end

  def peek
    @underlying_array[0]
  end

end

class Map

  def initialize
    @underlying_array = []
  end

  def set(key,value)
    @underlying_array.each do |inner|
      inner[1] = value if inner[0] == key
      break
    end
    @underlying_array << [key, value]
  end

  def get(key)
  end

  def delete(key)
  end

  def show
  end

end  