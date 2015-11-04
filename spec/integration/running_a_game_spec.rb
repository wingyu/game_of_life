require "spec_helper"

describe "Runs the Game of Life with applied rules" do
  let(:game) { GameOfLife::God.new(turns: 2, board_size:3) }

  context "Introducing a Blinker into the world" do
    let(:seeds) { [[1,0],[1,1],[1,2]] }
    before do
      game.seed_life(seeds)
      game.start_life
    end

    it "should still be alive by end of second generation" do
      aggregate_failures do
        expect(
          game.world.board_cell(x: 1, y: 0).alive?
        ).to eq true

        expect(
          game.world.board_cell(x: 1, y: 1).alive?
        ).to eq true

        expect(
          game.world.board_cell(x: 1, y: 2).alive?
        ).to eq true
      end
    end
  end
end
