require_relative "card.rb"

class Board

  def initialize
    @grid = Array.new(4) { Array.new(4) }
    populate
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
    system("clear")
    puts "  #{(0...size).to_a.join(' ')}"
    @grid.each_with_index do |row, i|
      puts "#{i} #{row.join(' ')}"
    end
  end

  def reveal(pos)
    if revealed?(pos)
      puts "You can't flip a card that has already been revealed."
    else
      self[pos].reveal
    end
    self[pos].val
  end

  def hide(pos)
    self[pos].hide
  end

  def [](pos)
    row,col = pos
    @grid[row][col]
  end

  def []=(pos,val)
    row,col = pos
    @grid[row][col] = val
  end

  def revealed?(pos)
    self[pos].revealed?
  end

  def won?
    rows.all? do |row|
      row.all?(&:revealed?)
    end
  end

end
