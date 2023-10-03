def palindrome?(str)
  reversed = ""
  (0...str.length).reverse_each do |i|
    reversed += str[i]
  end
  str == reversed
end

def substrings(str)
  subs = []
  (0...str.length).each do |i|
    subs << str[i]
    (i + 1...str.length).each do |j|
      if i == j
        next
      else
        subs << str[i..j]
      end
    end
  end
  subs
end

def palindrome_substrings(str)
  subs = substrings(str)
  palindrome_substrings = subs.select {|sub| palindrome?(sub) && sub.length > 1}
end