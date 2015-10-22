require "spec_helper"

module GameOfLife
  describe "Runs the Game of Life with applied rules" do
    let(:game) { GameOfLife::Game.new(turns: 1, board_size:3) }

    it "only has 0 cells left" do
      game.seed_life([1,1])
      game.start_life

      expect(game.grid.live_cell_count).to eq 0
    end
  end
end

