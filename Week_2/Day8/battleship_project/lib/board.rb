class Board

  attr_reader :size

  def initialize(n)
    @grid = Array.new(n) { Array.new(n, :N) }
    @size = n * n
  end

  def [](pos)
    row,col = pos
    @grid[row][col]
  end

  def []=(pos,val)
    row,col = pos
    @grid[row][col] = val
  end

  def num_ships
    @grid.flatten.count { |ele| ele == :S }
  end

  def attack(pos)
    if self[pos] == :S
      self[pos] = :H
      puts "you sunk my battleship!"
      true
    else
      self[pos] = :X
      false
    end
  end

  def place_random_ships
    quarter = size / 4.0

    while num_ships < quarter
      random_pos = [rand(0...@grid.length),rand(0...@grid.length)]
      self[random_pos] = :S
    end
  end

  def hidden_ships_grid
    hidden_grid = Array.new(@grid.length) { Array.new(@grid.length, :N)}
    @grid.each_with_index do |row, i|
      row.each_with_index do |col, j|
        hidden_grid[i][j] = :N if col == :S
        hidden_grid[i][j] = :X if col == :X
      end
    end
    hidden_grid
  end

  def self.print_grid(grid)
    grid.each do |row|
      puts row.join(" ")
    end
  end

  def cheat
    Board.print_grid(@grid)
  end

  def print
    Board.print_grid(hidden_ships_grid)
  end

end
