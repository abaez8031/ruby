def element_count(arr)
  count = Hash.new(0)
  arr.each do |ele|
    count[ele] += 1
  end
  count
end

def char_replace!(str,hash)
  (0...str.length).each do |i|
    char = str[i]
    str[i] = hash[char] if hash[char]
  end
  str
end

def product_inject(arr)
  arr.inject {|acc,el| acc * el}
end