require_relative '../lib/game_of_life.rb'

seeds = [[1,0],[1,1],[1,2]]

game = GameOfLife::Game.new(turns: 10, board_size: 3)
game.seed_life(seeds)
game.start_life
