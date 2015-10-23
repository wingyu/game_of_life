module GameOfLife
  class Cell
    attr_accessor :x, :y, :live_neighbours, :alive

    def initialize(x:, y:)
      @x = x
      @y = y
      @live_neighbours = 0
      @alive = false
    end
  end
end
