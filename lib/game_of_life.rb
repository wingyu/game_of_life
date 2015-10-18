require "game_of_life/version"

#require_relative "./game_of_life/cell.rb"

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
  board = Array.new(3) do |row|
            Array.new(3) do |col|
              Cell.new(col, row)   <----this will need experimenation
            end
          end

  def valid?

  end

  #not sure if this should be in cell class but if its here, Cell doesn't need to know about the World
  def sense_neighbours_for_each_cell
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
  attr_accessor :y, :x
  @live_neighbours = 0
  @live = false

  def react!
    if alive
      if live_neighbours >3 || <2
        DIE!
    else
      if live_neighbours ==3
        LIVE!
    end
  end

  def live?
  end

  def dead?

  def die!
  end

  def live!
  end
=end
