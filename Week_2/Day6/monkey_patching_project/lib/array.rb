# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    return nil if self.empty?
    self.max - self.min
  end

  def average
    return nil if self.empty?
    self.sum * 1.0 / self.length
  end

  def median
    return nil if self.empty?
    if self.length.even?
      return (self.sort[self.length / 2] + self.sort[(self.length / 2) -1]) / 2.0
    else
      return self.sort[self.length / 2]
    end
  end

  def counts
    count = Hash.new(0)
    self.each do |ele|
      count[ele] += 1
    end
    count
  end

  def my_count(val)
    count = 0
    self.each do |ele|
      count += 1 if ele == val
    end
    count
  end

  def my_index(val)
    (0...self.length).each do |i|
      curr = self[i]
      return i if curr == val
    end
    nil
  end

  def my_uniq
    new_arr = []
    self.each do |ele|
      new_arr << ele if !new_arr.include?(ele)
    end
    new_arr
  end

  def my_transpose
  end

end
