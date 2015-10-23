module GameOfLife
  class Cell
    attr_accessor :x, :y, :live_neighbours

    def initialize(x:, y:)
      @x = x
      @y = y
      @live_neighbours = 0
      @alive = false
    end

    def alive?; @alive; end

    def live!
      @alive = true
    end

    def react
      if good_conditions?
        live!
      elsif bad_conditions?
        die!
      end

      @live_neighbours = 0
    end

    def increment_live_neighbours
      @live_neighbours += 1
    end

    private

      def die!
        @alive = false
      end

      def good_conditions?
        live_neighbours == 3
      end

      def bad_conditions?
        live_neighbours > 3 || live_neighbours < 2
      end
  end
end
