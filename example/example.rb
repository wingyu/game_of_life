require_relative '../lib/game_of_life.rb'

seeds = [[1,0],[1,1],[1,2]]

world = GameOfLife::World.new(size: 3)
god = GameOfLife::God.new(turns: 10, world: world)
god.seed_life(seeds)
god.start_life
