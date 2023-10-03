def all_words_capitalized?(words)
  words.all? {|word| word == word[0].upcase + word[1..-1].downcase}
end

def no_valid_url?(urls)
  endings = [".com", ".net", ".io", ".org"]
  urls.none? { |url| endings.any? {|ending| url.end_with?(ending)}}
end

def any_passing_students?(students)
  students.any? {|student| student[:grades].sum / student[:grades].length >= 75}
end