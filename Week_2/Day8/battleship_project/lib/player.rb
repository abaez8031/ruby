class Player

  def get_move
    p 'enter a position with coordinates separated with a space like `4 7`'
    input = gets.chomp.split(" ")
    input.each_with_index do |num, i|
      input[i] = num.to_i
    end
    input
  end

end
