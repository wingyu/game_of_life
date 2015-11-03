require "spec_helper"

module GameOfLife
  describe "Runs the Game of Life with applied rules" do
    let(:game) { GameOfLife::Game.new(turns: 1, board_size:3) }
    let(:seeds) { [[1,1]] }
    let(:seeded_cell) { game.world.board_cell(x: 1,y: 1) }

    before do
      game.seed_life(seeds)
      game.start_life
    end

    it { expect(seeded_cell.alive?).to eq false }
  end
end
