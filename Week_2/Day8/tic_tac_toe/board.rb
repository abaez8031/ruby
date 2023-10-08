class Board

  def initialize
    @grid = Array.new(3) { Array.new(3, "_") }
  end

  def valid?(pos)
    row,col = pos
    return true if row >= 0 && row <= 2 && col >= 0 && col <= 2
    false
  end

  def empty?(pos)
    row,col = pos
    return true if @grid[row][col] == "_"
    false
  end

  def place_mark(pos, mark)
    row, col = pos
    if empty?(pos) && valid?(pos)
      @grid[row][col] = mark 
    else
      raise Exception.new("Invalid mark")
    end
  end
  
  def print
    @grid.each do |row|
      puts row
    end
  end

  def win_row?(mark)
    @grid.each do |row|
      return true if row.all? { |ele| ele == mark }
    end
    false
  end

  def win_col?(mark)
  end

end