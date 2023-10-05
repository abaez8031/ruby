# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def prime?(num)
  return false if num < 2
  (2...num).each do |factor|
    return false if num % factor == 0
  end  
  return true
end

def largest_prime_factor(num)
  (1..num).reverse_each do |i|
    return i if num % i == 0 && prime?(i)
  end
end

def unique_chars?(str)
  seen = []
  str.split("").each do |char|
    if seen.include?(char)
      return false
    else
      seen << char
    end
  end
  true
end

def dupe_indices(arr)
  count = Hash.new{|h,k| h[k] = []}
  arr.each_with_index do |ele, i|
    count[ele] << i
  end
  count.select { |k, v| v.length > 1 }
end

def ana_array(arr1, arr2)
  count1 = {}
  count2 = {}
  arr1.each do |ele|
    if !count1[ele]
      count1[ele] = 1
    else
      count1[ele] += 1
    end
  end
  arr2.each do |ele|
    if !count2[ele]
      count2[ele] = 1
    else
      count2[ele] += 1
    end
  end
  count1 == count2
end