module GameOfLife
  class Game
    def initialize(turns:, board_size:)
      @world = World.new(size: board_size)
    end
  end
end
