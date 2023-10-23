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
