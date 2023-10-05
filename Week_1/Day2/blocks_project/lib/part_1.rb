def select_even_nums(arr)
  arr.select {|num| num.even?}
end

def reject_puppies(arr)
  arr.reject {|dog| dog["age"] <= 2}
end

def count_positive_subarrays(arr)
  arr.count {|inner| inner.sum > 0}
end

def aba_translate(word)
  output = ""
  vowels = "aeiou".split("")
  word.each_char do |char|
    if vowels.include?(char)
      output += char + "b" + char
    else
      output += char
    end
  end
  output
end

def aba_array(arr)
  new_arr = arr.map do |word|
    aba_translate(word)
  end
  new_arr
end