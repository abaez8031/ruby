class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(char)
    @attempted_chars.include?(char)
  end

  def get_matching_indices(char)
    matching_indices = []
    @secret_word.each_char.with_index do |secret_char, i|
      matching_indices << i if char == secret_char
    end
    matching_indices
  end

  def fill_indices(char,indices)
    indices.each do |index|
      @guess_word[index] = char
    end
  end

  def try_guess(char)
    if already_attempted?(char)
      p "that has already been attempted"
      return false
    end

    @attempted_chars << char
    matching_indices = get_matching_indices(char)
    fill_indices(char, matching_indices) 
    @remaining_incorrect_guesses -= 1 if matching_indices.empty?
    true
  end

  def ask_user_for_guess
    p "Enter a char:"
    input = gets.chomp
    try_guess(input)
  end

  def win?
    if @secret_word == @guess_word.join
      puts "WIN"
      return true
    else
      return false
    end
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      p "LOSE"
      return true
    end
    false
  end

  def game_over?
    if win? || lose?
      p @secret_word
      return true
    end
    false
  end

end
