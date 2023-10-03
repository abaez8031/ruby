def hipsterfy(word)
  vowels = "aeiouAEIOU".split("")
  (0...word.length).reverse_each do |i|
    return word[0...i] + word[i + 1..-1] if vowels.include?(word[i])
  end
  word
end

def vowel_counts(str)
  count = Hash.new(0)
  vowels = "AEIOUaeiou".split("")
  str = str.downcase
  str.split("").each do |char|
    count[char] += 1
  end
  count
end

def caesar_cipher(message, n)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  ciphered = message.split("").map do |char|
    if alphabet.index(char)
      idx = alphabet.index(char)
      newIdx = (idx + n) % 26
      alphabet[newIdx]
    else
      char
    end
  end
  ciphered.join("")
end