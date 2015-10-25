module GameOfLife
  class World
    attr_reader :board

    def initialize(size:)
      @board = create_board(size)
    end

    def board_cell(x:,y:)
      @board[y][x]
    end

    private
    def create_board(size)
      Array.new(size) do |row|
        Array.new(size) do |col|
          Cell.new(x: col, y: row)
        end
      end
    end

  end
end
