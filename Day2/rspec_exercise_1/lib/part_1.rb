def average(num1,num2)
  (num1 + num2) / 2.0
end

def average_array(arr)
  arr.sum * 1.0 / arr.length
end

def repeat(str,num)
  output = ""
  num.times do
    output += str
  end
  output
end

def yell(str)
  str.upcase + "!"
end

def alternating_case(sentence)
  words = sentence.split(" ")
  output = []
  words.each_with_index do |word, i|
    if i.even? 
      output << word.upcase
    else
      output << word.downcase
    end
  end
  output.join(" ")
end