require "game_of_life/version"

require_relative "./game_of_life/cell.rb"
require_relative "./game_of_life/world.rb"
require_relative "./game_of_life/game.rb"

module GameOfLife
  # Your code goes here...
end

=begin

GOSU GRAPHICS- see youtube tutorial under favourties
-----------------------------------------------------------
World
  DIRECTIONS = [
    NORTH = [1, 1]
    SOUTH = [1,-1] ...etc
    ]

  def valid?

  end

  #not sure if this should be in cell class but if its here, Cell doesn't need to know about the World
  def sense_neighbours_for_each_cell

    #Test by make board[x][y] come to life then ...expect(cell.live_neigbours).to eq 1
     [+1 -1, +1 +1..etc].each do   <---- look at chess game
      neigbours_coordinate is = x+1, y+1 ....etc
      if valid and cell is alive
        increment cell.live_neighbours if board[x][y]
      end
    end
  end
---------------------------------------------

Game

  def start_life
  end

  def seed_life
  end

  def next_generation
  end

  def print_world
  end

----------------------------------------------

Cell

=end
