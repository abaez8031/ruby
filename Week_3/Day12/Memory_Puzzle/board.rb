require_relative "card.rb"

class Board

  def initialize
    @grid = Array.new(4) { Array.new(4) }
  end


  def populate
    cards = []
    ("A".."H").to_a.each do |letter|
      2.times do |i|
        cards << Card.new(letter)
      end
    end
    (0...@grid.length).each do |i|
      (0...@grid.length).each do |j|
        @grid[i][j] = cards.shuffle.pop
      end
    end
  end

  def render
  end

  def won?
    return true if @grid.flatten.all? { |card| card.info }
  end

  def reveal
  end

  def [](pos)
    row,col = pos
    @grid[row][col]
  end

  def []=(pos,val)
    row,col = pos
    @grid[row][col] = val
  end

end

b = Board.new
b.populate