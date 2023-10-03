def partition(arr, num)
  new_arr = []
  new_arr << arr.select {|int| int < num}
  new_arr << arr.select {|int| int >= num}
  new_arr
end

def merge(hash1, hash2)
  merged = {**hash1, **hash2}
end

def censor(sentence, curses)
  vowels = "aeiouAEIOU".split("")
  words = sentence.split(" ")
  new_words = words.map do |word|
    if curses.include?(word.downcase)
      chars = word.split("").map do |char|
        if vowels.include?(char)
          "*"
        else
          char
        end
      end
      chars.join("")
    else
      word
    end
  end
  new_words.join(" ")
end

def power_of_two?(num)
   return false if num < 1
   return true if num == 1
   num = power_of_two?(num / 2.0)
end