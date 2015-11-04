module GameOfLife
  class God
    attr_reader :world, :turns

    def initialize(turns: nil, board_size:)
      @world = World.new(size: board_size)
      @turns = turns
    end

    def seed_life(cell_coordinates)
      cell_coordinates.each do |coordinate|
        cell = world.board_cell(x: coordinate[0], y: coordinate[1])

        cell.live!
      end
    end

    def next_generation
      world.count_live_neighbours_for_cells

      world.board.each do |row|
        row.each do |cell|
          cell.react!
        end
      end
    end

    def start_life
      if turns.nil?
        loop { tick! }
      else
        turns.times { tick! }
      end
    end

    private

    def tick!
      world.print_board

      next_generation
    end
  end
end