module GameOfLife
  class World
    attr_reader :board, :size

    def initialize(size:)
      @size = size
      @board = create_board
      @neighbour_coordinates = [
        [0, 1],
        [1, 1],
        [1, 0],
        [1, -1],
        [0, -1],
        [-1, -1],
        [-1, 0],
        [-1, 1]
      ]
    end

    def board_cell(x:,y:)
      @board[y][x]
    end

    def count_live_neighbours_for_cells
      board.each do |row|
        row.each do |cell|
          scan_neighbours(cell)
        end
      end
    end

    private

    def create_board
      Array.new(size) do |row|
        Array.new(size) do |col|
          Cell.new(x: col, y: row)
        end
      end
    end

    def valid?(new_space)
      true if new_space.all? {|coordinate| coordinate >= 0 && coordinate < size }
    end

    def scan_neighbours(cell)
      @neighbour_coordinates.each do |coordinate|
         x = cell.x + coordinate[0]
         y = cell.y + coordinate[1]

        if valid?([x, y])
          neighbour = board_cell(x: x, y: y)

          cell.increment_live_neighbours if neighbour.alive?
        end
      end
    end
  end
end
