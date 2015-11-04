require_relative '../lib/game_of_life.rb'

seeds = [[1,0],[1,1],[1,2]]

god = GameOfLife::God.new(turns: 10, board_size: 3)
god.seed_life(seeds)
god.start_life
