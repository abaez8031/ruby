def proper_factors(num)
  factors = []
  (1...num).each do |i|
    factors << i if num % i == 0
  end
  factors
end

def aliquot_sum(num)
  proper_factors(num).sum
end

def perfect_number?(num)
  num == aliquot_sum(num)
end

def ideal_numbers(n)
  perfects = []
  i = 1
  while perfects.length < n
    perfects << i if perfect_number?(i)
    i += 1
  end
  perfects
end